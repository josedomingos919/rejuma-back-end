import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Put,
} from '@nestjs/common';
import { ClassTeamsTeacherService } from './classTeamTeacher.service';
import { AddClassTeamTeacherDto, UpdateClassTeamTeacherDto } from './dto';

@Controller('class-team-teacher')
export class ClassTeamTeacherController {
  constructor(private classTeamTeacherService: ClassTeamsTeacherService) {}

  @Get('/:classTeamId')
  get(@Param('classTeamId', ParseIntPipe) classTeamId: number) {
    return this.classTeamTeacherService.get(classTeamId);
  }

  @Post()
  add(@Body() data: AddClassTeamTeacherDto) {
    return this.classTeamTeacherService.add(data);
  }

  @Put()
  update(@Body() data: UpdateClassTeamTeacherDto) {
    return this.classTeamTeacherService.update(data);
  }

  @Delete('/:id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.classTeamTeacherService.remove(id);
  }
}
