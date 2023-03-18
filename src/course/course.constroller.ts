import { Controller, Post, Body } from '@nestjs/common';
import { CourseService } from './course.service';
import { AddCourseDto } from './dto/addCourseDto';

@Controller('course')
export class CourseController {
  constructor(private courseService: CourseService) {}

  @Post()
  add(@Body() dto: AddCourseDto) {
    return this.courseService.addCourse(dto);
  }
}
