import { GetClassTeamDto } from './dto';
import { Injectable, ForbiddenException } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddMatriculationDto } from './dto/addMatriculationDto';
import { UpdateMatriculationDto } from './dto/updateMatriculationDto';
import { GetAllMatriculationDto } from './dto/getAllMatriculationDto';
import { getPagination } from 'src/helpers';

@Injectable()
export class MatriculationService {
  constructor(private prisma: PrismaService) {}

  async getClassTeam(dto: GetClassTeamDto) {
    const where = {
      classId: dto.classId,
      schoolYear: {
        year: dto.schoolYear,
      },
    };

    if (dto?.courseId) {
      where['courseId'] = dto?.courseId;
    }

    const response = await this.prisma.classTeam.findMany({
      where,
      include: {
        class: {
          include: {
            registrationPrice: true,
          },
        },
      },
    });

    return response;
  }

  async add(dto: AddMatriculationDto) {
    const year = await this.prisma.schoolYear.findUnique({
      where: {
        year: dto.schoolYear,
      },
    });

    if (!year)
      throw new ForbiddenException({
        error: 'year_not_found',
        status: false,
      });

    try {
      const matriculation = await this.prisma.registration.create({
        data: {
          classTeamId: dto.classteamId,
          schoolYearId: year?.id,
          studentId: dto.studentId,
          statusId: dto.statusId,
          courseId: dto.courseId || null,
          classId: dto.classId,
          price: dto.price,
          type: dto.type,
        },
      });

      return matriculation;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async update(dto: UpdateMatriculationDto) {
    try {
      const matriculation = await this.prisma.registration.update({
        where: {
          id: dto.id,
        },
        data: {
          statusId: dto.statusId,
        },
      });

      return matriculation;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async remove(id: number) {
    const response = this.prisma.registration.delete({ where: { id } });

    return response;
  }

  private getAllMatriculationFilter(filter: GetAllMatriculationDto) {
    const where = {
      NOT: {
        status: {
          code: 'ELIM',
        },
      },
    };

    const { name } = filter;

    if (name) where['name'] = { contains: name };

    return { where };
  }

  async getAllMatriculation(filter: GetAllMatriculationDto) {
    const { page = 1, size = 10 } = filter;
    const { where } = this.getAllMatriculationFilter(filter);

    const total = await this.prisma.registration.count({
      where,
    });

    const { skip, take, totalPage } = getPagination({ page, size, total });

    const matriculation = await this.prisma.registration.findMany({
      skip,
      take,
      where,
      include: {
        class: true,
        status: true,
        course: true,
        student: true,
        classTeam: true,
        SchoolYear: true,
      },
    });

    return {
      page,
      total,
      totalPage,
      matriculation,
    };
  }
}
