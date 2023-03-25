import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddTeacherDto } from './dto/addTeacherDto';

@Injectable()
export class TeacherService {
  constructor(private prisma: PrismaService) {}

  addTeacher(dto: AddTeacherDto) {}
}
