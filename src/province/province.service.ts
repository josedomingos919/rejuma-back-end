import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class ProvinceService {
  constructor(private prisma: PrismaService) {}

  getAllProvince() {
    return this.prisma.province.findMany();
  }
}
