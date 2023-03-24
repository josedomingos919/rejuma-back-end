import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddEmployeeDto } from './dto';
import { GetAllEmployeeDto } from './dto/getAllEmployeeDto';

@Injectable()
export class EmployeeService {
  constructor(private prisma: PrismaService) {}

  async addEmployee(dto: AddEmployeeDto) {
    if (!dto?.birthDay) delete dto?.birthDay;

    try {
      const employee = await this.prisma.employee.create({
        data: dto,
      });

      return employee;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async search(keword: string) {
    try {
      const employees = await this.prisma.employee.findMany({
        where: {
          name: {
            contains: keword,
          },
        },
      });

      return employees;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  private getAllEmployeeFilter(filter: GetAllEmployeeDto) {
    const where = {};

    const { name } = filter;

    if (name) where['name'] = { contains: name };

    return { where };
  }

  private async getPagination(page: number, take: number, where: object) {
    const skip = (page - 1) * take;
    const total = await this.prisma.employee.count({
      where,
    });
    const totalPage = Math.ceil(total / take);

    return {
      skip,
      take,
      total,
      totalPage,
    };
  }

  async getAllEmployees(filter: GetAllEmployeeDto) {
    const { page = 1, size = 10 } = filter;
    const { where } = this.getAllEmployeeFilter(filter);
    const { skip, take, totalPage, total } = await this.getPagination(
      page,
      size,
      where,
    );

    const employees = await this.prisma.employee.findMany({
      skip,
      take,
      where,
      include: {
        office: true,
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
      employees,
    };
  }
}
