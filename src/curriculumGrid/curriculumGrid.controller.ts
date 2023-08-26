import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Query,
} from '@nestjs/common';
import { CurriculumGridService } from './curriculumGrid.service';
import { AddCurriculumGridDto, GetCurriculumGridDto } from './dto';

@Controller('curriculum-grid')
export class CurriculumGridController {
  constructor(private curriculumGridService: CurriculumGridService) {}

  @Post()
  add(@Body() dto: AddCurriculumGridDto) {
    return this.curriculumGridService.add(dto);
  }

  @Get('all')
  getAll(@Query() dto: GetCurriculumGridDto) {
    return this.curriculumGridService.getAll(dto);
  }

  @Delete('/:id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.curriculumGridService.remove(id);
  }
}
