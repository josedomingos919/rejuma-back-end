import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddMonthDto } from './dto/addMonthDto';

@Injectable()
export class MonthsService {
  constructor(private prisma: PrismaService) {}

  async getAll() {
    try {
      const response = await this.prisma.months.findMany();

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async addMonth(dto: AddMonthDto) {
    try {
      const response = await this.prisma.months.create({
        data: dto,
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async getMonths(year: number) {
    const response = await this.prisma.months.findMany({
      where: {
        schoolYear: {
          year,
        },
      },
      include: {
        schoolYear: true,
      },
    });

    return response;
  }

  async removeMonth(id: number) {
    try {
      const response = await this.prisma.months.delete({ where: { id } });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
