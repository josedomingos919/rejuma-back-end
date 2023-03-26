import {
  Controller,
  Post,
  Put,
  Body,
  HttpCode,
  Get,
  Query,
  HttpStatus,
} from '@nestjs/common';
import { GetAllEmployeeDto } from 'src/employee/dto';
import { UpdateTeacherDto } from './dto';
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

  @Put()
  @HttpCode(HttpStatus.OK)
  update(@Body() dto: UpdateTeacherDto) {
    return this.teacherService.updateTeacher(dto);
  }

  @Get()
  getAll(@Query() dto: GetAllEmployeeDto) {
    return this.teacherService.getAllTeacher(dto);
  }
}
