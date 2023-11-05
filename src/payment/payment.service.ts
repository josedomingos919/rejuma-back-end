import { ForbiddenException, Injectable } from '@nestjs/common';
import { getPagination, statusTypes } from 'src/helpers';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddPaymentDto } from './dto/addPaymentDto';
import { CartDto } from './dto/cartDto';
import { PaymentCodeType } from 'src/helpers/consts/paymentCodeType';
import { GetPaymentDto } from './dto/getPaymentDto';

@Injectable()
export class PaymentService {
  constructor(private prisma: PrismaService) {}

  async searchStudent(search: string) {
    const response = await this.prisma.student.findMany({
      where: {
        OR: [{ name: { contains: search } }, { bi: { contains: search } }],
      },
      include: {
        registration: {
          include: {
            SchoolYear: true,
            payment: {
              include: {
                Exam: true,
                status: true,
                SchoolFees: {
                  include: {
                    month: true,
                  },
                },
                SchoolResource: {
                  include: {
                    discipline: true,
                  },
                },
              },
            },
            class: true,
            course: true,
            classTeam: true,
          },
          where: {
            status: {
              code: statusTypes.ACTIVE,
            },
          },
        },
      },
    });

    return response;
  }

  getInvoiceNumber({ id, date }) {
    const invoiceYear = `${new Date(date).getFullYear()}`;
    const zeroNumber = '000000'.substring(0, 6 - `${id}`.length);

    return `${invoiceYear}${zeroNumber}${id}`;
  }

  async addPayment(dto: AddPaymentDto) {
    const status = await this.prisma.status.findFirst({
      where: {
        code: statusTypes.ACTIVE,
      },
    });

    if (!status?.id)
      throw new ForbiddenException({
        message: 'Estado não encontrado',
        error: 'error-status-not-found',
      });

    const invoice = await this.prisma.invoice.create({
      data: {
        number: '',
        total: dto.total,
        descontoSaldo: dto.descontoSaldo,
        subTotal: dto.subTotal,
        troco: dto.troco,
        valorDado: dto.valorDado,
        registrationId: dto.registrationId,
        statusId: status.id,
        employeeId: dto.employeeId,
      },
    });

    if (!invoice?.id)
      throw new ForbiddenException({
        message: 'Falha ao criar a fatura',
        error: 'invoice-not-created',
      });

    // set invoice number
    await this.prisma.invoice.update({
      data: {
        number: this.getInvoiceNumber({
          id: invoice.id,
          date: invoice.createdAt,
        }),
      },
      where: {
        id: invoice.id,
      },
    });

    // register invoice payment
    for (const payment of dto.cart) {
      await this.addInvoicePayment(
        payment,
        status.id,
        invoice.id,
        dto.employeeId,
        dto.registrationId,
      );
    }

    await this.prisma.student.update({
      where: {
        id: dto.studentId,
      },
      data: {
        balance: dto.balance - dto.descontoSaldo + dto.troco,
      },
    });

    // payment
    const payment = await this.prisma.invoice.findFirst({
      where: {
        id: invoice?.id,
      },
      include: {
        Payment: {
          include: {
            Exam: true,
            status: true,
            SchoolFees: {
              include: {
                month: true,
              },
            },
            SchoolResource: {
              include: {
                discipline: true,
              },
            },
          },
        },
        employee: {
          select: {
            id: true,
            name: true,
          },
        },
        registration: {
          include: {
            status: true,
            student: true,
          },
        },
        status: true,
      },
      orderBy: {
        id: 'desc',
      },
    });

    return payment;
  }

  async addInvoicePayment(
    payment: CartDto,
    statusId: number,
    invoiceId: number,
    employeeId: number,
    registrationId: number,
  ) {
    const paymentResponse = await this.prisma.payment.create({
      data: {
        statusId,
        invoiceId,
        employeeId,
        registrationId,
        type: payment.type,
        value: payment.value,
        multa: payment.multa,
        total: payment.total,
      },
    });

    // add extra data
    if (payment.type == PaymentCodeType.Propina) {
      await this.prisma.schoolFees.create({
        data: {
          monthsId: payment.monthsId,
          schoolFine: payment.hasMulta,
          paymentId: paymentResponse.id,
        },
      });
    } else if (payment.type == PaymentCodeType.Recurso) {
      await this.prisma.schoolResource.create({
        data: {
          disciplineId: payment.disciplineId,
          paymentId: paymentResponse.id,
        },
      });
    } else if (payment.type == PaymentCodeType.ExameEspecial) {
      await this.prisma.exam.create({
        data: {
          disciplineId: payment.disciplineId,
          paymentId: paymentResponse.id,
        },
      });
    }

    return paymentResponse;
  }

  //Estou comentando
  private getAllPaymentFilter(filter: GetPaymentDto) {
    const where = {
      NOT: {
        status: {
          code: 'ELIM',
        },
      },
    };

    const { name } = filter;

    if (name) {
      const OR: any = [
        {
          registration: {
            student: {
              name: { contains: name },
            },
          },
        },
        {
          registration: {
            student: {
              bi: { contains: name },
            },
          },
        },
        {
          number: { contains: name },
        },
      ];

      const nameInNumber = Number(name);

      if (nameInNumber >= 0) {
        OR.push({
          id: {
            equals: nameInNumber,
          },
        });
      }

      where['OR'] = OR;
    }

    return { where };
  }

  async getAllPayment(filter: GetPaymentDto) {
    const { page = 1, size = 10 } = filter;
    const { where } = this.getAllPaymentFilter(filter);

    const total = await this.prisma.invoice.count({
      where,
    });

    const { skip, take, totalPage } = getPagination({ page, size, total });

    const payment = await this.prisma.invoice.findMany({
      skip,
      take,
      where,
      include: {
        Payment: {
          include: {
            Exam: true,
            status: true,
            SchoolFees: {
              include: {
                month: true,
              },
            },
            SchoolResource: {
              include: {
                discipline: true,
              },
            },
          },
        },
        employee: {
          select: {
            id: true,
            name: true,
          },
        },
        registration: {
          include: {
            status: true,
            student: true,
          },
        },
        status: true,
      },
      orderBy: {
        id: 'desc',
      },
    });

    return {
      page,
      total,
      totalPage,
      payment,
    };
  }

  async cancelPayment(id: number) {
    // Get status
    const status = await this.prisma.status.findFirst({
      where: {
        code: statusTypes.ANNULLED,
      },
    });

    // Invoice
    const invoice = await this.prisma.invoice.findFirst({
      where: {
        id,
      },
      include: {
        status: true,
        registration: {
          include: {
            student: true,
          },
        },
      },
    });

    if (!invoice)
      throw new ForbiddenException({
        error: 'invoice-not-found',
        status: false,
      });

    if (invoice?.status?.code == status?.code)
      throw new ForbiddenException({
        error: 'payment-already-cancelled',
        status: false,
      });

    // Calc balance
    const updatedBalance =
      invoice?.registration?.student?.balance -
      invoice?.troco +
      invoice?.descontoSaldo;

    // Updated Balance
    await this.prisma.student.update({
      where: {
        id: invoice?.registration?.student?.id,
      },
      data: {
        balance: updatedBalance,
      },
    });

    // Invalid invoice
    const responseInvoice = await this.prisma.invoice.update({
      where: {
        id,
      },
      data: {
        statusId: status.id,
      },
    });

    // Invalida payments
    const responsePayment = await this.prisma.payment.updateMany({
      where: {
        invoiceId: id,
      },
      data: {
        statusId: status.id,
      },
    });

    return {
      responseInvoice,
      responsePayment,
    };
  }
}
