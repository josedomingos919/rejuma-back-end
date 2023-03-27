import { IsNotEmpty, IsString, IsNumber } from 'class-validator';

export class AddStudentDto {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsString()
  @IsNotEmpty()
  bi: string;

  @IsString()
  birthDay: string;

  @IsString()
  civilState: string;

  @IsString()
  gender: string;

  @IsString()
  address: string;

  @IsString()
  @IsNotEmpty()
  phone1: string;

  @IsString()
  phone2: string;

  @IsString()
  email: string;

  @IsNumber()
  @IsNotEmpty()
  countryId: number;

  @IsNumber()
  @IsNotEmpty()
  provinceId: number;

  @IsNumber()
  @IsNotEmpty()
  statusId: number;
}
