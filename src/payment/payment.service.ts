import { ForbiddenException, Injectable } from '@nestjs/common';
import { statusTypes } from 'src/helpers';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddPaymentDto } from './dto/addPaymentDto';
import { CartDto } from './dto/cartDto';
import { PaymentCodeType } from 'src/helpers/consts/paymentCodeType';

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

    for (const payment of dto.cart) {
      await this.addInvoicePayment(
        payment,
        status.id,
        invoice.id,
        dto.employeeId,
        dto.registrationId,
      );
    }

    return invoice;
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
}
