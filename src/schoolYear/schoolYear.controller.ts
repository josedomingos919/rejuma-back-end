import { Controller, Post, Body, Get, Query } from '@nestjs/common';
import { AddSchoolYearDto } from './dto';
import { GetAllSchoolYearDto } from './dto/getAllSchoolYearDto';
import { SchoolYearService } from './schoolYear.service';

@Controller('school-year')
export class SchoolYearController {
  constructor(private schoolYearService: SchoolYearService) {}

  @Post()
  add(@Body() dto: AddSchoolYearDto) {
    return this.schoolYearService.addSchoolYear(dto);
  }

  @Get('all')
  getAll(@Query() dto: GetAllSchoolYearDto) {
    return this.schoolYearService.getAllSchoolYears(dto);
  }
}
