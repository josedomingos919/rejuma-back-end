import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddStudentSupervisorDto } from './dto/addStudentSupervisorDto';
import { UpdateStudentSupervisorDto } from './dto/updateStudentSupervisorDto';

@Injectable()
export class StudentSupervisorService {
  constructor(private prisma: PrismaService) {}

  async add(dto: AddStudentSupervisorDto) {
    try {
      const studentSupervisor = await this.prisma.studentSupervisor.create({
        data: dto,
      });

      return studentSupervisor;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  getAllStudentSupervisor() {
    return this.prisma.studentSupervisor.findMany({
      include: {
        Student: true,
        DiscountsInUse: true,
      },
    });
  }

  getByStudentSupervisorId(StudentSupervisorId: number) {
    return this.prisma.studentSupervisor.findMany({
      where: {
        id: StudentSupervisorId,
      },
    });
  }

  async update(dto: UpdateStudentSupervisorDto) {
    const { id, ...data } = dto;

    try {
      const response = await this.prisma.studentSupervisor.update({
        where: {
          id,
        },
        data,
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async remove(id: number) {
    const response = await this.prisma.studentSupervisor.delete({
      where: {
        id,
      },
    });

    return response;
  }
}
