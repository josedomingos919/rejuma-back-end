import { IsNotEmpty, IsString } from 'class-validator';

export class StartupDto {
  @IsString()
  @IsNotEmpty()
  password: string;
}
