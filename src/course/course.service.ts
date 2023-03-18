import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddCourseDto } from './dto/addCourseDto';

@Injectable()
export class CourseService {
  constructor(private prisma: PrismaService) {}

  async addCourse(dto: AddCourseDto) {
    try {
      const course = await this.prisma.course.create({
        data: {
          description: dto.description,
          name: dto.name,
        },
      });

      const disciplines = await this.prisma.courseDisciplines.createMany({
        data: dto.disciplines.map((disciplineId) => ({
          courseId: course.id,
          disciplineId,
        })),
      });

      return {
        course,
        disciplines,
      };
    } catch (error) {
      throw new ForbiddenException({
        status: false,
        error,
      });
    }
  }
}
