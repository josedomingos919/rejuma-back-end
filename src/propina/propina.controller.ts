import { Controller, Get, Param, ParseIntPipe, Query } from '@nestjs/common';
import { PropinaService } from './propina.service';
import { GetPropinaDto } from './dto/getPropinaDto';

@Controller('propina')
export class PropinaController {
  constructor(private provinceService: PropinaService) {}

  @Get('classteam')
  getClassTeam(@Query() queryParams: GetPropinaDto) {
    return this.provinceService.getClassTeam(queryParams);
  }

  @Get('/:countryId')
  getByCountryId(@Param('countryId', ParseIntPipe) countryId: number) {
    return this.provinceService.getByCountryId(countryId);
  }
}
