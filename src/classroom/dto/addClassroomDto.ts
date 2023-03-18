import { IsString, IsNotEmpty } from 'class-validator';

export class AddClassrommDto {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsString()
  description: string;
}
