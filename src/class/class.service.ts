import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddClassDto, UpdateClassDto } from './dto';

@Injectable()
export class ClassService {
  constructor(private prisma: PrismaService) {}

  async updateClass(dto: UpdateClassDto) {
    try {
      await this.prisma.classDisciplines.deleteMany({
        where: {
          classId: dto.id,
        },
      });

      const classs = await this.prisma.class.update({
        where: {
          id: dto.id,
        },
        data: {
          name: dto.name,
          classDisciplines: {
            create: dto.disciplines.map((disciplineId) => ({ disciplineId })),
          },
        },
      });

      return classs;
    } catch (error) {
      throw new ForbiddenException({
        status: false,
        error,
      });
    }
  }

  async addClass(dto: AddClassDto) {
    try {
      const classs = await this.prisma.class.create({
        data: {
          name: dto.name,
          classDisciplines: {
            create: dto.disciplines.map((disciplineId) => ({ disciplineId })),
          },
        },
      });

      return classs;
    } catch (error) {
      throw new ForbiddenException({
        status: false,
        error,
      });
    }
  }

  async getAllClasses() {
    try {
      const classes = await this.prisma.class.findMany({
        orderBy: {
          name: 'asc',
        },
        include: {
          classDisciplines: {
            include: {
              discipline: true,
            },
          },
        },
      });

      return classes;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async removeClass(id: number) {
    await this.prisma.classDisciplines.deleteMany({
      where: {
        classId: id,
      },
    });

    const response = await this.prisma.class.delete({
      where: {
        id,
      },
    });

    return response;
  }
}
