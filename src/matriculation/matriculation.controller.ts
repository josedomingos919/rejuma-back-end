import { Controller, Get, Query } from '@nestjs/common';
import { MatriculationService } from './matriculation.service';
import { GetClassTeamDto } from './dto';

@Controller('matriculation')
export class MatriculationController {
  constructor(private matriculationService: MatriculationService) {}

  @Get('classteam')
  getClassTeam(@Query() dto: GetClassTeamDto) {
    return this.matriculationService.getClassTeam(dto);
  }
}
