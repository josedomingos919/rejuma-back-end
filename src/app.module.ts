import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { AuthModule } from './auth/auth.module';
import { CountryModule } from './country/country.module';
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
  ],
})
export class AppModule {}
