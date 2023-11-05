import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddPricesDto, UpdatePricesDto } from './dto';
import { GetPriceDto } from './dto/getPriceDto';

@Injectable()
export class PriceService {
  constructor(private prisma: PrismaService) {}

  async isExistingPrice(dto: AddPricesDto) {
    const where: any = {
      classId: dto.classId,
    };

    if (dto?.courseId) {
      where.courseId = dto.courseId;
    }

    const price = await this.prisma.registrationPrice.findFirst({
      where,
    });

    return price?.id > 0;
  }

  async update(dto: UpdatePricesDto) {
    if (dto?.examePrice) dto.examePrice = Number(dto.examePrice);

    try {
      const price = await this.prisma.registrationPrice.update({
        where: {
          id: dto.id,
        },
        data: dto,
      });

      return price;
    } catch (error) {
      throw new ForbiddenException({
        status: false,
        error,
      });
    }
  }

  async add(dto: AddPricesDto) {
    if (dto?.examePrice) dto.examePrice = Number(dto.examePrice);

    if (await this.isExistingPrice(dto)) {
      throw new ForbiddenException({
        status: false,
        error: 'existing',
      });
    }

    if (!dto?.courseId) delete dto.courseId;

    try {
      const price = await this.prisma.registrationPrice.create({
        data: dto,
      });

      return price;
    } catch (error) {
      throw new ForbiddenException({
        status: false,
        error,
      });
    }
  }

  async getAll() {
    try {
      const prices = await this.prisma.registrationPrice.findMany({
        include: {
          class: true,
          course: true,
        },
      });

      return prices;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async remove(id: number) {
    const response = await this.prisma.registrationPrice.delete({
      where: {
        id,
      },
    });

    return response;
  }

  async getPrice(query: GetPriceDto) {
    const response = await this.prisma.registrationPrice.findFirst({
      where: {
        classId: query.classId,
        courseId: query.courseId,
      },
    });

    return response;
  }
}
