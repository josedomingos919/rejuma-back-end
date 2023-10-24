import {
  Controller,
  Get,
  Post,
  Param,
  ParseIntPipe,
  Body,
} from '@nestjs/common';
import { MonthsService } from './months.service';
import { AddMonthDto } from './dto/addMonthDto';

@Controller('months')
export class MonthsController {
  constructor(private monthsService: MonthsService) {}

  @Get('all')
  getAll() {
    return this.monthsService.getAll();
  }

  @Post()
  addMonth(@Body() dto: AddMonthDto) {
    return this.monthsService.addMonth(dto);
  }

  @Get('/:year')
  getMonths(@Param('year', ParseIntPipe) year: number) {
    return this.monthsService.getMonths(year);
  }
}
