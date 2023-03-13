import { Body, Controller, HttpCode, HttpStatus, Post } from '@nestjs/common';
import { AddEmployeeDto } from './dto';
import { EmployeeService } from './employee.service';

@Controller('employee')
export class EmployeeController {
  constructor(private employeeService: EmployeeService) {}

  @Post()
  @HttpCode(HttpStatus.OK)
  add(@Body() dto: AddEmployeeDto) {
    return this.employeeService.addEmployee(dto);
  }
}
