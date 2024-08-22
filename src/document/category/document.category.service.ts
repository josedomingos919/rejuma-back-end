import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import {
  AddDocumentCategoryDto,
  UpdateDocumentCategoryDto,
  GetAllDocumentCategoryDto,
} from './dto';
import { getPagination, statusTypes } from 'src/helpers';

@Injectable()
export class DocumentCategoryService {
  constructor(private prisma: PrismaService) {}

  async add(dto: AddDocumentCategoryDto) {
    const response = await this.prisma.documentCategory.create({
      data: {
        ...dto,
        status: {
          connect: {
            code: statusTypes.ACTIVE,
          },
        },
      },
    });

    return response;
  }

  async update(dto: UpdateDocumentCategoryDto) {
    const response = await this.prisma.documentCategory.update({
      where: {
        id: dto.id,
      },
      data: dto,
    });

    return response;
  }

  async getAll(dto: GetAllDocumentCategoryDto) {
    const { page = 1, size = 10 } = dto;
    const { where } = await this.getAllFilter(dto);

    const total = await this.prisma.documentCategory.count({
      where,
    });

    const { skip, take, totalPage } = getPagination({ page, size, total });

    const categories = await this.prisma.documentCategory.findMany({
      skip,
      take,
      where,
      include: {
        status: true,
      },
    });

    return {
      page,
      total,
      totalPage,
      categories,
    };
  }

  private async getAllFilter(dto: GetAllDocumentCategoryDto) {
    let where: any = {
      status: {
        code: statusTypes.ACTIVE,
      },
    };

    const { name } = dto;

    if (name)
      where = {
        AND: {
          name: { contains: name },
        },
      };

    return { where };
  }

  async remove(id: number) {
    try {
      const deletedStatus = await this.prisma.status.findUnique({
        where: {
          code: statusTypes.DELETED,
        },
      });

      const student = await this.prisma.documentCategory.update({
        where: {
          id,
        },
        data: {
          statusId: deletedStatus.id,
        },
      });

      return student;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }
}
