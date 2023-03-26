import { Transform } from 'class-transformer';
import { IsOptional, IsInt } from 'class-validator';

export class GetAllSchoolYearDto {
  @Transform(({ value }) => Number.parseInt(value))
  @IsOptional()
  @IsInt()
  page: number;

  @Transform(({ value }) => Number.parseInt(value))
  @IsInt()
  @IsOptional()
  size: number;

  @Transform(({ value }) => Number.parseInt(value))
  @IsInt()
  @IsOptional()
  year: number;
}
