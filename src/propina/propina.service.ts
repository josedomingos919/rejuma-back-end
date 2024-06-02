import { Injectable, Query } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { GetPropinaDto } from './dto/getPropinaDto';
import { statusTypes } from 'src/helpers';
import { GetStudentsDto } from './dto/getStudentsDto';

@Injectable()
export class PropinaService {
  constructor(private prisma: PrismaService) {}

  async getClassTeam(dto: GetPropinaDto) {
    const where = {};

    if (dto.courseId) where['courseId'] = dto.courseId;

    const response = await this.prisma.classTeam.findMany({
      where: {
        ...where,
        schoolYear: {
          year: dto.schoolYear,
        },
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

  async getStudents(@Query() dto: GetStudentsDto) {
    const months = await this.prisma.months.findMany({
      where: {
        schoolYear: {
          year: dto.schoolYear,
        },
      },
      orderBy: {
        initialDate: 'asc',
      },
    });

    const students = await this.prisma.student.findMany({
      where: {
        id: dto.classTeamId,
        registration: {
          some: {
            status: {
              code: statusTypes.ACTIVE,
            },
          },
        },
      },
      select: {
        id: true,
        name: true,
        registration: {
          select: {
            payment: {
              select: {
                SchoolFees: true,
              },
            },
          },
        },
      },
    });

    return {
      months,
      students,
    };
  }
}
