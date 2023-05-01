import {
  Body,
  Controller,
  Delete,
  Get,
  HttpCode,
  HttpStatus,
  Param,
  ParseIntPipe,
  Post,
  Put,
  Query,
} from '@nestjs/common';
import { MatriculationService } from './matriculation.service';
import { GetClassTeamDto } from './dto';

@Controller('matriculation')
export class MatriculationController {
  constructor(private matriculationService: MatriculationService) {}

  @HttpCode(HttpStatus.OK)
  @Post()
  addDiscipline(@Body() dto: AddDisciplineDto) {
    return this.matriculationService.add(dto);
  }

  @Get('all')
  getAll() {
    return this.matriculationService.getAll();
  }

  @Put()
  update(@Body() dto: UpdateDisciplineDto) {
    return this.matriculationService.update(dto);
  }

  @Delete('/:id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.matriculationService.remove(id);
  }

  @Get('classteam')
  getClassTeam(@Query() dto: GetClassTeamDto) {
    return this.matriculationService.getClassTeam(dto);
  }
}
