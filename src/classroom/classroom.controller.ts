import {
  Controller,
  Post,
  Body,
  Get,
  Delete,
  Param,
  ParseIntPipe,
  Put,
} from '@nestjs/common';
import { ClassroomService } from './classroom.service';
import { AddClassroomDto, UpdateClassroomDto } from './dto';

@Controller('classroom')
export class ClassroomController {
  constructor(private classroomService: ClassroomService) {}

  @Post()
  add(@Body() dto: AddClassroomDto) {
    return this.classroomService.addClassromm(dto);
  }

  @Put()
  update(@Body() dto: UpdateClassroomDto) {
    return this.classroomService.updateClassroom(dto);
  }

  @Get('all')
  getAll() {
    return this.classroomService.getAllClassroom();
  }

  @Get('avaliable/:period')
  getAvaliable(@Param('period') period: string) {
    return this.classroomService.getAvaliable(period);
  }

  @Delete('/:id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.classroomService.removeClassroom(id);
  }
}
