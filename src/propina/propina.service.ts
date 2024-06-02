import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { GetPropinaDto } from './dto/getPropinaDto';
import { statusTypes } from 'src/helpers';

@Injectable()
export class PropinaService {
  constructor(private prisma: PrismaService) {}

  async getClassTeam(dto: GetPropinaDto) {
    const where = {};

    if (dto.courseId) where['courseId'] = dto.courseId;

    const response = await this.prisma.classTeam.findMany({
      where: {
        ...where,
        name: {
          contains: dto.classTeam,
        },
        classId: dto.classId,
        status: {
          code: statusTypes.ACTIVE,
        },
      },
    });

    return response.map((item) => {
      return {
        ...item,
        value: item.id,
        label: item.name,
      };
    });
  }

  async getByCountryId(dto: any) {
    const months = await this.prisma.months.findMany({
      where: {
        schoolYear: {
          year: dto.schoolYear,
        },
      },
    });

    return months;
  }
}
