import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddSchoolYearDto } from './dto';

@Injectable()
export class SchoolYearService {
  constructor(private prisma: PrismaService) {}

  async addSchoolYear(dto: AddSchoolYearDto) {
    try {
      const year = await this.prisma.schoolYear.create({
        data: dto,
      });

      return year;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
