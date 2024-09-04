import { IsBoolean, IsInt, IsNotEmpty, IsOptional, IsString } from 'class-validator';

export class UpdateMedicalRecordDto {
  @IsInt()
  @IsNotEmpty()
  id: number;

  @IsBoolean()
  allergiesSpecific: boolean;

  @IsString()
  @IsOptional()
  allergiesDetails: string;

  @IsBoolean()
  cognitiveDisorder: boolean;

  @IsBoolean()
  asthma: boolean;

  @IsBoolean()
  epilepsy: boolean;

  @IsBoolean()
  convulsion: boolean;

  @IsBoolean()
  visualImpairment: boolean;

  @IsBoolean()
  specialNeeds: boolean;

  @IsBoolean()
  hemophilia: boolean;

  @IsBoolean()
  hearingImpairment: boolean;

  @IsBoolean()
  medicalTreatment: boolean;

  @IsString()
  @IsOptional()
  treatmentDetails: string;

  @IsString()
  @IsOptional()
  hospitalName: string;

  @IsString()
  @IsOptional()
  hospitalAddress: string;

  @IsInt()
  @IsNotEmpty()
  registrationId: number;
}
