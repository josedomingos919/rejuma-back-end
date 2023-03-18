import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddDisciplineDto } from './dto/addDisciplineDto';

@Injectable()
export class DisciplineService {
  constructor(private prisma: PrismaService) {}

  async addDiscipline(dto: AddDisciplineDto) {
    try {
      const discipline = await this.prisma.discipline.create({
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
}
