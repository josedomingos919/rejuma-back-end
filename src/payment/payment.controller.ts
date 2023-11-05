import {
  Body,
  Controller,
  Get,
  Param,
  ParseIntPipe,
  Post,
  Query,
} from '@nestjs/common';
import { PaymentService } from './payment.service';
import { AddPaymentDto } from './dto/addPaymentDto';
import { GetAllMatriculationDto } from 'src/matriculation/dto/getAllMatriculationDto';

@Controller('payment')
export class PaymentController {
  constructor(private paymentService: PaymentService) {}

  @Get('search-student/:search')
  searchStudent(@Param('search') search: string) {
    return this.paymentService.searchStudent(search);
  }

  @Post()
  addPayment(@Body() dto: AddPaymentDto) {
    return this.paymentService.addPayment(dto);
  }

  @Get('all')
  getAll(@Query() dto: GetAllMatriculationDto) {
    return this.paymentService.getAllPayment(dto);
  }

  @Post('cancel/:id')
  cancelPayment(@Param('id', ParseIntPipe) id: number) {
    return this.paymentService.cancelPayment(id);
  }
}
