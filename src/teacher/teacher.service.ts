import { Injectable } from '@nestjs/common';
import { ForbiddenException } from '@nestjs/common/exceptions';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddTeacherDto } from './dto/addTeacherDto';

@Injectable()
export class TeacherService {
  constructor(private prisma: PrismaService) {}

  async addTeacher(dto: AddTeacherDto) {
    try {
      const teacher = await this.prisma.teacher.create({
        data: {
          academicLevel: dto.academicLevel,
          employeeId: dto.employeeId,
          statusId: dto.statusId,
          teacherDisciplines: {
            create: dto.teacherDisciplines.map((disciplineId) => ({
              disciplineId,
            })),
          },
        },
      });

      return teacher;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
