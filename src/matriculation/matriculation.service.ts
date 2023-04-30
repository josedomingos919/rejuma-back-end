import { GetClassTeamDto } from './dto';
import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

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
}
