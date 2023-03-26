import { Controller, Post, Body, HttpCode, HttpStatus } from '@nestjs/common';
import { AddTeacherDto } from './dto/addTeacherDto';
import { TeacherService } from './teacher.service';

@Controller('teacher')
export class TeacherController {
  constructor(private teacherService: TeacherService) {}

  @Post()
  @HttpCode(HttpStatus.OK)
  add(@Body() dto: AddTeacherDto) {
    return this.teacherService.addTeacher(dto);
  }
}
