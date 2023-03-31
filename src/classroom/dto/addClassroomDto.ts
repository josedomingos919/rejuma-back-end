import { IsString, IsNotEmpty } from 'class-validator';

export class AddClassroomDto {
  @IsNotEmpty()
  @IsString()
  name: string;

  @IsString()
  description: string;
}
