import { Transform } from 'class-transformer';
import {
  IsInt,
  IsNotEmpty,
  IsNumber,
  IsOptional,
  IsString,
} from 'class-validator';

export class AddMatriculationDto {
  @Transform(({ value }) => Number.parseInt(value))
  @IsNotEmpty()
  @IsNumber()
  schoolYear: number;

  @IsInt()
  @IsOptional()
  courseId: number;

  @IsInt()
  @IsNotEmpty()
  classId: number;

  @IsInt()
  @IsNotEmpty()
  classteamId: number;

  @IsInt()
  @IsNotEmpty()
  statusId: number;

  @IsInt()
  @IsNotEmpty()
  studentId: number;

  @IsNumber()
  @IsNotEmpty()
  price: number;

  @IsString()
  @IsNotEmpty()
  type: string;

  @IsNumber()
  @IsNotEmpty()
  cardPrice: number;
}
