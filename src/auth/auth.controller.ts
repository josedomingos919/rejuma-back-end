import { Controller, Post, Body, HttpCode, Get, Query } from '@nestjs/common';
import { HttpStatus } from '@nestjs/common/enums';
import { AuthService } from './auth.service';
import { SignupDto } from './dto';
import { SigninDto } from './dto/signinDto';
import { StartupDto } from './dto/startupDto';

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('signup')
  signup(@Body() dto: SignupDto) {
    return this.authService.signup(dto);
  }

  @HttpCode(HttpStatus.OK)
  @Post('signin')
  signin(@Body() dto: SigninDto) {
    return this.authService.signin(dto);
  }

  @Get('startup')
  startup(@Query() dto: StartupDto) {
    if (dto.password == 'rejuma') {
      return this.authService.startup();
    }
  }
}
