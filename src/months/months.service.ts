import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class MonthsService {
  constructor(private prisma: PrismaService) {}

  async getAll() {
    const response = await this.prisma.months.findMany();

    return response;
  }
}
