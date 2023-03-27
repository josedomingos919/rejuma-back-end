import { Injectable } from '@nestjs/common';
import { ForbiddenException } from '@nestjs/common/exceptions';
import { getPagination } from 'src/helpers';
import { PrismaService } from 'src/prisma/prisma.service';
import { GetAllTeacherDto, UpdateTeacherDto } from './dto';
import { AddTeacherDto } from './dto/addTeacherDto';

@Injectable()
export class TeacherService {
  constructor(private prisma: PrismaService) {}

  private getTeacherData(dto: AddTeacherDto) {
    return {
      academicLevel: dto.academicLevel,
      employeeId: dto.employeeId,
      statusId: dto.statusId,
      teacherDisciplines: {
        create: dto.teacherDisciplines.map((disciplineId) => ({
          disciplineId,
        })),
      },
    };
  }

  async addTeacher(dto: AddTeacherDto) {
    try {
      const teacher = await this.prisma.teacher.create({
        data: this.getTeacherData(dto),
      });

      return teacher;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async updateTeacher(dto: UpdateTeacherDto) {
    try {
      await this.prisma.teacherDisciplines.deleteMany({
        where: {
          teacherId: dto.id,
        },
      });

      const teacher = await this.prisma.teacher.update({
        where: {
          id: dto.id,
        },
        data: this.getTeacherData(dto),
      });

      return teacher;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  private getAllTeacherFilter(filter: GetAllTeacherDto) {
    let where: any = {
      NOT: {
        status: {
          code: 'ELIM',
        },
      },
    };

    const { name } = filter;

    if (name) where = { employee: { name: { contains: name } } };

    return { where };
  }

  async getAllTeacher(filter: GetAllTeacherDto) {
    const { page = 1, size = 10 } = filter;
    const { where } = this.getAllTeacherFilter(filter);

    const total = await this.prisma.teacher.count({
      where,
    });

    const { skip, take, totalPage } = getPagination({ page, size, total });

    const teachers = await this.prisma.teacher.findMany({
      skip,
      take,
      where,
      include: {
        status: true,
        employee: {
          include: {
            office: true,
            status: true,
            province: true,
            country: true,
          },
        },
        teacherDisciplines: true,
      },
      orderBy: [
        {
          employee: {
            name: 'asc',
          },
        },
      ],
    });

    return {
      page,
      total,
      totalPage,
      teachers,
    };
  }
}
