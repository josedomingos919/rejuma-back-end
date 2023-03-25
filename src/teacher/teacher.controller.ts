import { Controller, Post, Body } from '@nestjs/common';
import { AddTeacherDto } from './dto/addTeacherDto';

@Controller('teacher')
export class TeacherController {
  constructor() {}

  @Post()
  add(@Body() dto: AddTeacherDto) {}
}
