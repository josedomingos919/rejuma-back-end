import { Transform } from 'class-transformer';
import { IsNotEmpty, IsOptional, IsInt } from 'class-validator';

export class UpdatePricesDto {
  @Transform(({ value }) => Number.parseInt(value))
  @IsNotEmpty()
  @IsInt()
  id: number;

  @IsOptional()
  @Transform(({ value }) => Number.parseFloat(value))
  @IsInt()
  registrationPrice: number;

  @IsOptional()
  @Transform(({ value }) => Number.parseFloat(value))
  @IsInt()
  reregistrationPrice: number;

  @IsOptional()
  @Transform(({ value }) => Number.parseFloat(value))
  @IsInt()
  monthPrice: number;
}
