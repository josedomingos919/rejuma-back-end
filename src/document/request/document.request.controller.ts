import {
  Get,
  Put,
  Post,
  Body,
  Param,
  Query,
  Delete,
  Controller,
  ParseIntPipe,
} from '@nestjs/common';
import { DocumentRequestService } from './document.request.service';
import {
  AddDocumentRequestDto,
  UpdateDocumentRequestDto,
  GetAllDocumentRequestDto,
} from './dto';

@Controller('document/request')
export class DocumentRequestController {
  constructor(private documentRequestService: DocumentRequestService) {}

  @Post()
  add(@Body() dto: AddDocumentRequestDto) {
    return this.documentRequestService.add(dto);
  }

  @Put()
  update(@Body() dto: UpdateDocumentRequestDto) {
    return this.documentRequestService.update(dto);
  }

  @Get('all')
  getAll(@Query() dto: GetAllDocumentRequestDto) {
    return this.documentRequestService.getAll(dto);
  }

  @Delete('/:id')
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.documentRequestService.remove(id);
  }

  @Post('cancel/:id')
  cancel(@Param('id', ParseIntPipe) id: number) {
    return this.documentRequestService.cancel(id);
  }
}
