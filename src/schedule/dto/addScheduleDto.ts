import { Transform } from 'class-transformer';
import { IsString, IsNotEmpty } from 'class-validator';

export class AddScheduleDto {
  @IsNotEmpty()
  @IsString()
  startTime: string;

  @IsNotEmpty()
  @IsString()
  endTime: string;

  @IsNotEmpty()
  @Transform(({ value }) => Number.parseInt(value))
  disciplineId: number;

  @IsNotEmpty()
  @Transform(({ value }) => Number.parseInt(value))
  classTeamId: number;

  @IsNotEmpty()
  @Transform(({ value }) => Number.parseInt(value))
  weekDaysId: number;
}
