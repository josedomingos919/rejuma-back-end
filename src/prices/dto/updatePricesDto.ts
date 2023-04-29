import { Transform } from 'class-transformer';
import { IsNotEmpty, IsInt } from 'class-validator';

export class UpdatePricesDto {
  @Transform(({ value }) => Number.parseInt(value))
  @IsNotEmpty()
  @IsInt()
  id: number;

  @Transform(({ value }) => Number.parseInt(value))
  @IsNotEmpty()
  @IsInt()
  classId: number;

  @Transform(({ value }) => Number.parseInt(value))
  @IsInt()
  courseId: number;

  @Transform(({ value }) => Number.parseFloat(value))
  @IsNotEmpty()
  @IsInt()
  registrationPrice: number;

  @Transform(({ value }) => Number.parseFloat(value))
  @IsNotEmpty()
  @IsInt()
  reregistrationPrice: number;

  @Transform(({ value }) => Number.parseFloat(value))
  @IsNotEmpty()
  @IsInt()
  monthPrice: number;
}
