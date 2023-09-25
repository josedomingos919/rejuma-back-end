import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdateSettingDto } from './dto';

@Injectable()
export class SettingService {
  constructor(private prisma: PrismaService) {}

  async update(dto: UpdateSettingDto) {
    try {
      const response = await this.prisma.setting.update({
        where: {
          key: dto.key,
        },
        data: {
          value: dto.value,
        },
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async getOne(key: string) {
    try {
      const response = await this.prisma.setting.findFirst({
        where: {
          key,
        },
      });

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async getAll() {
    try {
      const response = await this.prisma.setting.findMany();

      return response;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
