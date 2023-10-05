import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdatePaymentDto, AddPaymentDto, GetAllPaymentsDto } from './dto';

@Injectable()
export class PaymentService {
  constructor(private prisma: PrismaService) {}

  async add(dto: AddPaymentDto) {
    try {
      const payment = await this.prisma.payment.create({
        data: dto,
      });

      return payment;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async update(dto: UpdatePaymentDto) {
    try {
      const payment = await this.prisma.payment.update({
        where: {
          id: dto.id,
        },
        data: dto,
      });

      return payment;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async getAll(dto: GetAllPaymentsDto) {
    try {
      const payments = await this.prisma.payment.findMany({});

      return payments;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async remove(id: number) {
    const response = await this.prisma.payment.delete({
      where: {
        id,
      },
    });

    return response;
  }
}
