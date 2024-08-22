import { Transform } from 'class-transformer';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class UpdateDocumentCategoryDto {
  @Transform(({ value }) => Number(value))
  @IsNotEmpty()
  @IsNumber()
  id: number;

  @IsString()
  @IsNotEmpty()
  name: string;
}
