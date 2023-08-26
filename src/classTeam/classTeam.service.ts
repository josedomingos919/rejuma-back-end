import { Injectable } from '@nestjs/common';
import { ForbiddenException } from '@nestjs/common/exceptions';
import { getPagination, statusTypes } from 'src/helpers';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddClassTeamDto, GetAllClassTeamDto, UpdateClassTeamDto } from './dto';

@Injectable()
export class ClassTeamService {
  constructor(private prisma: PrismaService) {}

  private async getSchoolYear(year: number) {
    const schoolYear = await this.prisma.schoolYear.findUnique({
      where: {
        year,
      },
    });

    if (!schoolYear?.id)
      throw new ForbiddenException({
        error: {
          meta: { target: 'schoolYearId' },
        },
        status: false,
      });

    return schoolYear;
  }

  async add(dto: AddClassTeamDto) {
    try {
      const schoolYear = await this.getSchoolYear(dto.schoolYear);

      const classTeam = await this.prisma.classTeam.create({
        data: {
          name: dto.name,
          period: dto.period,
          classId: dto.classId,
          classroomId: dto.classroomId,
          courseId: dto.courseId,
          schoolYearId: schoolYear.id,
          statusId: dto.statusId,
        },
      });

      return classTeam;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async update(dto: UpdateClassTeamDto) {
    try {
      const schoolYear = await this.getSchoolYear(dto.schoolYear);

      const classTeam = await this.prisma.classTeam.update({
        where: {
          id: dto.id,
        },
        data: {
          name: dto.name,
          period: dto.period,
          classId: dto.classId,
          classroomId: dto.classroomId,
          courseId: dto.courseId,
          schoolYearId: schoolYear.id,
        },
      });

      return classTeam;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  private getAllFilter(filter: GetAllClassTeamDto) {
    let where: any = {
      NOT: {
        status: {
          code: statusTypes.DELETED,
        },
      },
    };

    const { name } = filter;

    if (name)
      where = {
        AND: {
          name: { contains: name },
        },
      };

    return { where };
  }

  async getAll(filter: GetAllClassTeamDto) {
    const { page = 1, size = 10 } = filter;
    const { where } = this.getAllFilter(filter);

    const total = await this.prisma.classTeam.count({
      where,
    });

    const { skip, take, totalPage } = getPagination({ page, size, total });

    const classTeams = await this.prisma.classTeam.findMany({
      skip,
      take,
      where,
      include: {
        status: true,
        class: true,
        classroom: true,
        course: true,
        schoolYear: true,
      },
    });

    return {
      page,
      total,
      totalPage,
      classTeams,
    };
  }

  async remove(id: number) {
    try {
      const deletedStatus = await this.prisma.status.findUnique({
        where: {
          code: statusTypes.DELETED,
        },
      });

      const responseActiveMatriculation =
        await this.prisma.registration.findFirst({
          where: {
            classTeamId: id,
            status: {
              code: statusTypes.ACTIVE,
            },
          },
        });

      if (responseActiveMatriculation) {
        throw new ForbiddenException({
          error: 'has-active-students',
          status: false,
        });
      }

      const classTeam = await this.prisma.classTeam.update({
        where: {
          id,
        },
        data: {
          statusId: deletedStatus.id,
        },
      });

      return classTeam;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
