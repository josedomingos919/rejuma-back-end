import { Transform } from 'class-transformer';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class UpdateSchoolYearDto {
  @Transform(({ value }) => Number.parseInt(value))
  @IsNotEmpty()
  @IsNumber()
  id: number;

  @Transform(({ value }) => Number.parseInt(value))
  @IsNumber()
  @IsNotEmpty()
  year: number;

  @IsString()
  description: string;
}
