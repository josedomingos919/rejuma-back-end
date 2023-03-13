import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class OfficeService {
  constructor(private prisma: PrismaService) {}

  getAll() {
    return this.prisma.office.findMany();
  }
}
