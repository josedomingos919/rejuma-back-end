import { Controller, Post, Body, Get } from '@nestjs/common';
import { DisciplineService } from './discipline.service';
import { AddDisciplineDto } from './dto/addDisciplineDto';

@Controller('discipline')
export class DisciplineController {
  constructor(private disciplineServcie: DisciplineService) {}

  @Post()
  addDiscipline(@Body() dto: AddDisciplineDto) {
    return this.disciplineServcie.addDiscipline(dto);
  }

  @Get('all')
  getAll() {
    return this.disciplineServcie.getAll();
  }
}
