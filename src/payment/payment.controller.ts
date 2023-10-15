import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { PaymentService } from './payment.service';
import { AddPaymentDto } from './dto/addPaymentDto';

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
}
