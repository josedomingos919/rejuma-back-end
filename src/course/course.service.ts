import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddCourseDto, UpdateCourseDto } from './dto';

@Injectable()
export class CourseService {
  constructor(private prisma: PrismaService) {}

  async addCourse(dto: AddCourseDto) {
    try {
      const course = await this.prisma.course.create({
        data: {
          description: dto.description,
          name: dto.name,
          courseDisciplines: {
            create: dto.disciplines.map((disciplineId) => ({ disciplineId })),
          },
        },
      });

      return course;
    } catch (error) {
      throw new ForbiddenException({
        status: false,
        error,
      });
    }
  }

  async getAllCourses() {
    try {
      const courses = await this.prisma.course.findMany({
        orderBy: {
          name: 'asc',
        },
        include: {
          courseDisciplines: {
            include: {
              discipline: true,
            },
          },
        },
      });

      return courses;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async update(dto: UpdateCourseDto) {
    try {
      await this.prisma.courseDisciplines.deleteMany({
        where: {
          courseId: dto.id,
        },
      });

      const course = await this.prisma.course.update({
        where: {
          id: dto.id,
        },
        data: {
          description: dto.description,
          name: dto.name,
          courseDisciplines: {
            create: dto.disciplines.map((disciplineId) => ({ disciplineId })),
          },
        },
      });

      return course;
    } catch (error) {
      throw new ForbiddenException({
        status: false,
        error,
      });
    }
  }

  async remove(id: number) {
    await this.prisma.courseDisciplines.deleteMany({
      where: {
        courseId: id,
      },
    });

    const response = await this.prisma.course.delete({
      where: {
        id,
      },
    });

    return response;
  }
}
