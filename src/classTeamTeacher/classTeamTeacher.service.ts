import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddClassTeamTeacherDto, UpdateClassTeamTeacherDto } from './dto';

@Injectable()
export class ClassTeamsTeacherService {
  constructor(private prisma: PrismaService) {}

  async get() {
    const response = await this.prisma.classTeamTeacher.findMany({
      include: {
        teacher: {
          include: {
            employee: {
              select: {
                id: true,
                bi: true,
                name: true,
              },
            },
          },
        },
        discipline: {
          select: {
            id: true,
            name: true,
            description: true,
          },
        },
        classTeam: {
          include: {
            schoolYear: {
              select: {
                id: true,
                year: true,
              },
            },
            class: {
              select: {
                id: true,
                name: true,
              },
            },
          },
        },
      },
    });

    return response;
  }

  async add(data: AddClassTeamTeacherDto) {
    try {
      const response = await this.prisma.classTeamTeacher.create({
        data: {
          teacherId: data.teacherId,
          classTeamId: data.classTeamId,
          disciplineId: data.disciplineId,
        },
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
      });
    }
  }

  async update(data: UpdateClassTeamTeacherDto) {
    try {
      const response = await this.prisma.classTeamTeacher.update({
        data: {
          teacherId: data.teacherId,
          classTeamId: data.classTeamId,
          disciplineId: data.disciplineId,
        },
        where: {
          id: data.id,
        },
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
      });
    }
  }

  async remove(id: number) {
    const response = await this.prisma.classTeamTeacher.delete({
      where: {
        id,
      },
    });

    return response;
  }
}
