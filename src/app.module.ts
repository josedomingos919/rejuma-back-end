import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { AuthModule } from './auth/auth.module';
import { ClassroomModule } from './classroom/classroom.module';
import { CountryModule } from './country/country.module';
import { CourseModule } from './course/course.module';
import { DisciplineModule } from './discipline/discipline.module';
import { EmployeeModule } from './employee/employee.module';
import { OfficeModule } from './office/office.module';
import { PrismaModule } from './prisma/prisma.module';
import { ProvinceModule } from './province/province.module';
import { SchoolYearModule } from './schoolYear/schoolYear.module';
import { StatusModule } from './status/status.module';
import { StudentModule } from './student/student.module';
import { TeacherModule } from './teacher/teacher.module';
import { UserModule } from './user/user.module';
import { ClassModule } from './class/class.module';
import { ClassTeamModule } from './classTeam/classTeam.module';
import { PriceModule } from './prices/prices.module';
import { MatriculationModule } from './matriculation/matriculation.module';

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
    CourseModule,
    SchoolYearModule,
    TeacherModule,
    StudentModule,
    ClassModule,
    ClassTeamModule,
    PriceModule,
    MatriculationModule,
  ],
})
export class AppModule {}
