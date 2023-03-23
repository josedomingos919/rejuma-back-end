import {
  Body,
  Controller,
  HttpCode,
  HttpStatus,
  Post,
  Get,
  Param,
  Query,
} from '@nestjs/common';
import { AddEmployeeDto } from './dto';
import { GetAllEmployeeDto } from './dto/getAllEmployeeDto';
import { EmployeeService } from './employee.service';

@Controller('employee')
export class EmployeeController {
  constructor(private employeeService: EmployeeService) {}

  @Post()
  @HttpCode(HttpStatus.OK)
  add(@Body() dto: AddEmployeeDto) {
    return this.employeeService.addEmployee(dto);
  }

  @Get('search/:keword')
  search(@Param('keword') keword: string) {
    return this.employeeService.search(keword);
  }

  @Get()
  getAll(@Query() queryParams: GetAllEmployeeDto) {
    return this.employeeService.getAllEmployees(queryParams);
  }
}
