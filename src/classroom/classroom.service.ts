import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddClassrommDto } from './dto';

@Injectable()
export class ClassroomService {
  constructor(private prisma: PrismaService) {}

  async addClassromm(dto: AddClassrommDto) {
    try {
      const classroom = await this.prisma.classroom.create({
        data: dto,
      });

      return classroom;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async getAllClassroom() {
    try {
      const classrooms = await this.prisma.classroom.findMany();

      return classrooms;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
