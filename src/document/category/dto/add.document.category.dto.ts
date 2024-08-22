import { IsNotEmpty, IsString } from 'class-validator';

export class AddDocumentCategoryDto {
  @IsString()
  @IsNotEmpty()
  name: string;
}
