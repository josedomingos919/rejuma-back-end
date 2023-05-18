import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddStudentDto, UpdateStudentDto, GetAllStudentDto } from './dto';
import { getPagination, statusTypes } from 'src/helpers';

@Injectable()
export class StudentService {
  constructor(private prisma: PrismaService) {}

  async autocomplete(search = '') {
    const response = await this.prisma.student.findMany({
      where: {
        name: {
          contains: search,
        },
        status: {
          code: statusTypes.ACTIVE,
        },
      },
      include: {
        registration: {
          where: {
            status: {
              code: statusTypes.ACTIVE,
            },
          },
        },
      },
    });

    return response;
  }

  async addStudent(dto: AddStudentDto) {
    if (!dto?.birthDay) delete dto?.birthDay;

    try {
      const student = await this.prisma.student.create({
        data: dto,
      });

      return student;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async search(keword: string) {
    try {
      const students = await this.prisma.student.findMany({
        where: {
          name: {
            contains: keword,
          },
        },
      });

      return students;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  private getAllStudentFilter(filter: GetAllStudentDto) {
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

  async getAllStudents(filter: GetAllStudentDto) {
    const { page = 1, size = 10 } = filter;
    const { where } = this.getAllStudentFilter(filter);

    const total = await this.prisma.student.count({
      where,
    });

    const { skip, take, totalPage } = getPagination({ page, size, total });

    const students = await this.prisma.student.findMany({
      skip,
      take,
      where,
      include: {
        status: true,
        province: true,
        country: true,
      },
      orderBy: [
        {
          name: 'asc',
        },
      ],
    });

    return {
      page,
      total,
      totalPage,
      students,
    };
  }

  async updateStudent(dto: UpdateStudentDto) {
    if (!dto?.birthDay) delete dto?.birthDay;

    try {
      const student = await this.prisma.student.update({
        where: {
          id: dto.id,
        },
        data: dto,
      });

      return student;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async removeStudent(id: number) {
    try {
      const deletedStatus = await this.prisma.status.findUnique({
        where: {
          code: statusTypes.DELETED,
        },
      });

      const student = await this.prisma.student.update({
        where: {
          id,
        },
        data: {
          statusId: deletedStatus.id,
        },
      });

      return student;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
