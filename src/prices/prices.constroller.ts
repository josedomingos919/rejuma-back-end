import {
  Controller,
  Post,
  Body,
  Get,
  Put,
  Delete,
  ParseIntPipe,
  Param,
  HttpStatus,
  HttpCode,
} from '@nestjs/common';

import { AddPricesDto, UpdatePricesDto } from './dto';
import { PriceService } from './prices.service';

@Controller('price')
export class PriceController {
  constructor(private pricesService: PriceService) {}

  @HttpCode(HttpStatus.OK)
  @Post()
  add(@Body() dto: AddPricesDto) {
    return this.pricesService.add(dto);
  }

  @Put()
  update(@Body() dto: UpdatePricesDto) {
    return this.pricesService.update(dto);
  }

  @Get('all')
  getAll() {
    return this.pricesService.getAll();
  }

  @Delete('/:id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.pricesService.remove(id);
  }
}
