import { Controller, Post, Body } from '@nestjs/common';
import { ClassroomService } from './classroom.service';
import { AddClassrommDto } from './dto';

@Controller('classroom')
export class ClassroomController {
  constructor(private classroomService: ClassroomService) {}

  @Post()
  add(@Body() dto: AddClassrommDto) {
    return this.classroomService.addClassromm(dto);
  }
}
