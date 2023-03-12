import { ForbiddenException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { SignupDto } from './dto';

import * as argon from 'argon2';

import { SigninDto } from './dto/signinDto';
import { JwtService } from '@nestjs/jwt/dist';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class AuthService {
  constructor(
    private prisma: PrismaService,
    private jwt: JwtService,
    private config: ConfigService,
  ) {}

  async signup(dto: SignupDto) {
    try {
      const password = await argon.hash(dto.password);

      const user = await this.prisma.user.create({
        data: {
          password,
          phone: dto.phone,
          access: dto.access,
          employeeId: dto.employeeId,
        },
      });

      delete user.password;

      return user;
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
      });
    }
  }

  async signin(dto: SigninDto) {
    try {
      const user = await this.prisma.user.findUnique({
        include: {
          employee: true,
        },
        where: {
          phone: dto.phone,
        },
      });

      if (!user)
        throw new ForbiddenException({
          message: 'credential incorrect',
          status: false,
        });

      const passwordMatches = await argon.verify(user.password, dto.password);

      if (!passwordMatches)
        throw new ForbiddenException({
          message: 'credential incorrect',
          status: false,
        });

      delete user.password;

      const token = await this.getSignToken(user.id, user.phone);

      return {
        user,
        token,
      };
    } catch (error) {
      throw new ForbiddenException({
        error,
        status: false,
        message: 'unexpected error',
      });
    }
  }

  getSignToken(userId: number, phone: string): Promise<string> {
    const payload = {
      sub: userId,
      phone,
    };

    return this.jwt.signAsync(payload, {
      expiresIn: '15m',
      secret: this.config.get('JWT_SECRET'),
    });
  }
}
