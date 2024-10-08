import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { UpdateSettingDto } from './dto';
import { GetKeysDto } from './dto/getKeysDto';

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

  converKeystToJson(keys = [], data = []) {
    let json = {};

    for (let key of keys) {
      json[key] = data.find((e) => e.key == key);
    }

    return json;
  }

  async getKeys(dto: GetKeysDto) {
    const response = await this.prisma.setting.findMany({
      where: {
        key: {
          in: dto.keys,
        },
      },
    });

    return this.converKeystToJson(dto.keys, response);
  }
}
