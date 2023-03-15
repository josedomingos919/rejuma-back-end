import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddEmployeeDto } from './dto';

@Injectable()
export class EmployeeService {
  constructor(private prisma: PrismaService) {}

  async addEmployee(dto: AddEmployeeDto) {
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
}
