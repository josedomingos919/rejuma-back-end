import { Injectable } from '@nestjs/common';
import { statusTypes } from 'src/helpers';
import { PrismaService } from 'src/prisma/prisma.service';

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
}
