import { Controller, Post, Body } from '@nestjs/common';
import { AddSchoolYearDto } from './dto';
import { SchoolYearService } from './schoolYear.service';

@Controller('school-year')
export class SchoolYearController {
  constructor(private schoolYearService: SchoolYearService) {}

  @Post()
  add(@Body() dto: AddSchoolYearDto) {
    return this.schoolYearService.addSchoolYear(dto);
  }
}
