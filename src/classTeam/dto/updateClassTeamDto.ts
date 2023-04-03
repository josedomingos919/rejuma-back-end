import { Transform } from 'class-transformer';
import { IsNotEmpty, IsString, IsArray, IsInt } from 'class-validator';

export class UpdateClassTeamDto {
  @IsInt()
  @IsNotEmpty()
  id: number;

  @IsNotEmpty()
  @IsString()
  name: string;

  @IsInt()
  @IsNotEmpty()
  statusId: number;

  @IsInt()
  @IsNotEmpty()
  classId: number;

  @IsNotEmpty()
  @IsString()
  period: string;

  @IsInt()
  @IsNotEmpty()
  courseId: number;

  @IsInt()
  @IsNotEmpty()
  classroomId: number;

  @Transform(({ value }) => Number.parseInt(value))
  @IsInt()
  @IsNotEmpty()
  schoolYear: number;

  @IsArray()
  @IsInt({ each: true })
  @IsNotEmpty({ each: true })
  disciplines: number[];
}
