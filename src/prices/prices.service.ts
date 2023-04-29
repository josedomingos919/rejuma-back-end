import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddPricesDto, UpdatePricesDto } from './dto';

@Injectable()
export class PriceService {
  constructor(private prisma: PrismaService) {}

  async update(dto: UpdatePricesDto) {
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
      const prices = await this.prisma.registrationPrice.findMany();

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
}
