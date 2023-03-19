import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class AddSchoolYearDto {
  @IsNumber()
  @IsNotEmpty()
  year: number;

  @IsString()
  description: string;
}
