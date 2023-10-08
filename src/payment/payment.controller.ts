import { Controller, Get, Param } from '@nestjs/common';
import { PaymentService } from './payment.service';

@Controller('payment')
export class PaymentController {
  constructor(private paymentService: PaymentService) {}

  @Get('search-student/:search')
  searchStudent(@Param('search') search: string) {
    return this.paymentService.searchStudent(search);
  }
}
