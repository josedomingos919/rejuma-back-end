import { ForbiddenException, Injectable } from '@nestjs/common';
import { AddScheduleDto } from './dto/addScheduleDto';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdateScheduleDto } from './dto/updateScheduleDto';

@Injectable()
export class ScheduleService {
  public constructor(private prisma: PrismaService) {}

  async add(dto: AddScheduleDto) {
    try {
      const response = await this.prisma.schedule.create({
        data: {
          endTime: dto.endTime,
          startTime: dto.startTime,
          weekDaysId: dto.weekDaysId,
          classTeamId: dto.classTeamId,
          disciplineId: dto.disciplineId,
        },
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
      });
    }
  }

  async update(dto: UpdateScheduleDto) {
    try {
      const response = await this.prisma.schedule.update({
        where: {
          id: dto.id,
        },
        data: {
          endTime: dto.endTime,
          startTime: dto.startTime,
          weekDaysId: dto.weekDaysId,
          classTeamId: dto.classTeamId,
          disciplineId: dto.disciplineId,
        },
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
      });
    }
  }

  async get(classTeamId: number) {
    try {
      const response = await this.prisma.weekDays.findMany({
        include: {
          Schedule: {
            where: {
              classTeamId,
            },
            orderBy: {
              startTime: 'asc',
            },
          },
        },
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
      });
    }
  }

  async remove(id: number) {
    const response = await this.prisma.schedule.delete({
      where: {
        id,
      },
    });

    return response;
  }
}
