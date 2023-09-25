import { Controller, Get } from '@nestjs/common';
import { MonthsService } from './months.service';

@Controller('months')
export class MonthsController {
  constructor(private monthsService: MonthsService) {}

  @Get('all')
  getAll() {
    return this.monthsService.getAll();
  }
}
