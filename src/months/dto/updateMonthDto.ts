import { Transform } from 'class-transformer';
import { IsString, IsNotEmpty } from 'class-validator';

export class UpdateMonthDto {
  @IsNotEmpty()
  @Transform(({ value }) => Number(value))
  id: number;

  @IsNotEmpty()
  @IsString()
  initialDate: string;

  @IsNotEmpty()
  @IsString()
  limitDate: string;

  @IsNotEmpty()
  @IsString()
  name: string;

  @IsNotEmpty()
  @Transform(({ value }) => Number(value))
  number: number;

  @IsNotEmpty()
  @Transform(({ value }) => Number(value))
  schoolYearId: number;
}