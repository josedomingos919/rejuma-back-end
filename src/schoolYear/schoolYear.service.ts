import { ForbiddenException, Injectable } from '@nestjs/common';
import { getPagination } from 'src/helpers';
import { PrismaService } from 'src/prisma/prisma.service';
import {
  AddSchoolYearDto,
  UpdateSchoolYearDto,
  GetAllSchoolYearDto,
} from './dto';

@Injectable()
export class SchoolYearService {
  constructor(private prisma: PrismaService) {}

  async addSchoolYear(dto: AddSchoolYearDto) {
    try {
      const year = await this.prisma.schoolYear.create({
        data: dto,
      });

      return year;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async update(dto: UpdateSchoolYearDto) {
    try {
      const year = await this.prisma.schoolYear.update({
        where: {
          id: dto.id,
        },
        data: dto,
      });

      return year;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  private getAllSchoolYearFilter(filter: GetAllSchoolYearDto) {
    const where = {};

    const { year } = filter;

    if (year) where['year'] = { equals: year };

    return { where };
  }

  async getAllSchoolYears(filter: GetAllSchoolYearDto) {
    const { page = 1, size = 10 } = filter;
    const { where } = this.getAllSchoolYearFilter(filter);

    const total = await this.prisma.schoolYear.count({ where });

    const { skip, take, totalPage } = getPagination({
      page,
      size,
      total,
    });

    const schoolYears = await this.prisma.schoolYear.findMany({
      skip,
      take,
      where,
    });

    return {
      page,
      total,
      totalPage,
      schoolYears,
    };
  }

  async remove(id: number) {
    const response = await this.prisma.schoolYear.delete({
      where: {
        id,
      },
    });

    return response;
  }
}
