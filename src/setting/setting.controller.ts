import { UpdateSettingDto } from './dto';
import { SettingService } from './setting.service';
import { Body, Controller, Get, Param, Put } from '@nestjs/common';

@Controller('setting')
export class SettingController {
  constructor(private settingService: SettingService) {}

  @Put('all')
  update(@Body() dto: UpdateSettingDto) {
    return this.settingService.update(dto);
  }

  @Get('all')
  getAll() {
    return this.settingService.getAll();
  }

  @Get(':key')
  getOne(@Param('key') key: string) {
    return this.settingService.getOne(key);
  }
}
