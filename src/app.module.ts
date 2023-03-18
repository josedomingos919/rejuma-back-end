import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { AuthModule } from './auth/auth.module';
import { ClassroomModule } from './classroom/classroom.module';
import { CountryModule } from './country/country.module';
import { DisciplineModule } from './discipline/discipline.module';
import { EmployeeModule } from './employee/employee.module';
import { OfficeModule } from './office/office.module';
import { PrismaModule } from './prisma/prisma.module';
import { ProvinceModule } from './province/province.module';
import { StatusModule } from './status/status.module';
import { UserModule } from './user/user.module';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    PrismaModule,
    AuthModule,
    UserModule,
    StatusModule,
    CountryModule,
    ProvinceModule,
    OfficeModule,
    EmployeeModule,
    ClassroomModule,
    DisciplineModule,
  ],
})
export class AppModule {}
