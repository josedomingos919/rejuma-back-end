import { GetClassTeamDto } from './dto';
import { Injectable, ForbiddenException } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddMatriculationDto } from './dto/addMatriculationDto';
import { UpdateMatriculationDto } from './dto/updateMatriculationDto';

@Injectable()
export class MatriculationService {
  constructor(private prisma: PrismaService) {}

  async getClassTeam(dto: GetClassTeamDto) {
    const where = {
      classId: dto.classId,
      schoolYear: {
        year: dto.schoolYear,
      },
    };

    if (dto?.courseId) {
      where['courseId'] = dto?.courseId;
    }

    const response = await this.prisma.classTeam.findMany({
      where,
      include: {
        class: {
          include: {
            registrationPrice: true,
          },
        },
      },
    });

    return response;
  }

  async add(dto: AddMatriculationDto) {
    try {
      const matriculation = await this.prisma.registration.create({
        data: {
          studentId: 44,
          classTeamId: 3,
          schoolYearId: 0,
          statusId: 3,
          courseId: 3,
          classId: 4,
          price: 3434,
          type: 'ldild',
        },
      });

      return matriculation;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async update(dto: UpdateMatriculationDto) {
    try {
      const discipline = await this.prisma.discipline.update({
        where: {
          id: dto.id,
        },
        data: dto,
      });

      return discipline;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async remove(id: number) {
    const response = this.prisma.discipline.delete({ where: { id } });

    return response;
  }
}
