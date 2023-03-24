import {
  Body,
  Controller,
  HttpCode,
  HttpStatus,
  Post,
  Get,
  Param,
  Query,
  Put,
} from '@nestjs/common';
import { AddEmployeeDto, GetAllEmployeeDto, UpdateEmployeeDto } from './dto';
import { EmployeeService } from './employee.service';

@Controller('employee')
export class EmployeeController {
  constructor(private employeeService: EmployeeService) {}

  @Post()
  @HttpCode(HttpStatus.OK)
  add(@Body() dto: AddEmployeeDto) {
    return this.employeeService.addEmployee(dto);
  }

  @Put()
  @HttpCode(HttpStatus.OK)
  update(@Body() dto: UpdateEmployeeDto) {
    return this.employeeService.updateEmployee(dto);
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
