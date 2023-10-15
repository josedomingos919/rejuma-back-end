import { IsArray, IsInt, IsNotEmpty, IsNumber } from 'class-validator';
import { Transform } from 'class-transformer';
import { CartDto } from './cartDto';

export class AddPaymentDto {
  @Transform(({ value }) => Number(value))
  @IsNotEmpty()
  @IsNumber()
  total: number;

  @Transform(({ value }) => Number(value))
  @IsNotEmpty()
  @IsNumber()
  subTotal: number;

  @Transform(({ value }) => Number(value))
  @IsNotEmpty()
  @IsNumber()
  valorDado: number;

  @Transform(({ value }) => Number(value))
  @IsNotEmpty()
  @IsNumber()
  troco: number;

  @Transform(({ value }) => Number(value))
  @IsNotEmpty()
  @IsNumber()
  descontoSaldo: number;

  @IsNotEmpty()
  @IsInt()
  registrationId: number;

  @IsNotEmpty()
  @IsInt()
  employeeId: number;

  @IsArray()
  @IsNotEmpty()
  cart: CartDto[];
}
