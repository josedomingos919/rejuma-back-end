import { Injectable } from '@nestjs/common';
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
            employee: true,
          },
        },
        discipline: true,
        classTeam: true,
      },
    });

    return response;
  }

  async add(data: AddClassTeamTeacherDto) {
    const response = await this.prisma.classTeamTeacher.create({
      data: {
        teacherId: data.teacherId,
        classTeamId: data.classTeamId,
        disciplineId: data.disciplineId,
      },
    });

    return response;
  }

  async update(data: UpdateClassTeamTeacherDto) {
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
