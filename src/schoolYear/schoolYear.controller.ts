import {
  Controller,
  Post,
  Body,
  Get,
  Query,
  Delete,
  HttpCode,
  Param,
  HttpStatus,
  ParseIntPipe,
} from '@nestjs/common';
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

  @Delete('/:id')
  @HttpCode(HttpStatus.OK)
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.schoolYearService.remove(id);
  }
}
