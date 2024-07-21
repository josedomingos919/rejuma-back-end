import { IsInt, IsNotEmpty } from 'class-validator';

export class UpdateMatriculationDto {
  @IsInt()
  @IsNotEmpty()
  id: number;

  @IsInt()
  @IsNotEmpty()
  studentId: number;

  @IsInt()
  @IsNotEmpty()
  statusId: number;
}
