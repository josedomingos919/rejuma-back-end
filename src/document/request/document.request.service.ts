import { PrismaService } from 'src/prisma/prisma.service';
import { ForbiddenException, Injectable } from '@nestjs/common';

import { getPagination, statusTypes } from 'src/helpers';
import { GetAllDocumentCategoryDto } from '../category/dto';
import {
  AddDocumentRequestDto,
  GetAllDocumentRequestDto,
  UpdateDocumentRequestDto,
} from './dto';

@Injectable()
export class DocumentRequestService {
  constructor(private prisma: PrismaService) {}

  async add(dto: AddDocumentRequestDto) {
    const response = await this.prisma.documentRequest.create({
      data: {
        studentId: dto.statusId,
        registrationId: dto.registrationId,
        documentTypeId: dto.documentTypeId,
      },
    });

    return response;
  }

  async update(dto: UpdateDocumentRequestDto) {
    const response = await this.prisma.documentType.update({
      where: {
        id: dto.id,
      },
      data: {
        name: dto.name,
        price: dto.price,
        statusId: dto.statusId,
        documentCategoryId: dto.categoryId,
      },
    });

    return response;
  }

  async getAllSelect() {
    const types = await this.prisma.documentType.findMany({
      include: {
        status: true,
        document: true,
      },
    });

    return types;
  }

  async getAll(dto: GetAllDocumentRequestDto) {
    const { page = 1, size = 10 } = dto;
    const { where } = await this.getAllFilter(dto);

    const total = await this.prisma.documentType.count({
      where,
    });

    const { skip, take, totalPage } = getPagination({ page, size, total });

    const types = await this.prisma.documentType.findMany({
      skip,
      take,
      where,
      include: {
        status: true,
        document: true,
      },
    });

    return {
      page,
      total,
      types,
      totalPage,
    };
  }

  private async getAllFilter(dto: GetAllDocumentCategoryDto) {
    let where: any = {
      status: {
        code: {
          notIn: [statusTypes.DELETED],
        },
      },
    };

    const { name } = dto;

    if (name)
      where = {
        OR: [
          {
            name: { contains: name },
          },
          {
            document: {
              name: {
                contains: name,
              },
            },
          },
        ],
      };

    return { where };
  }

  async remove(id: number) {
    try {
      const student = await this.prisma.documentType.update({
        where: {
          id,
        },
        data: {
          status: {
            connect: {
              code: statusTypes.DELETED,
            },
          },
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

  async cancel(id: number) {
    try {
      const student = await this.prisma.documentType.update({
        where: {
          id,
        },
        data: {
          status: {
            connect: {
              code: statusTypes.ANNULLED,
            },
          },
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
