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

  async getAllEmployees(filter: GetAllEmployeeDto) {
    const employees = await this.prisma.employee.findMany({
      include: {
        office: true,
        status: true,
        province: true,
        country: true,
      },
    });

    return employees;
  }
}
