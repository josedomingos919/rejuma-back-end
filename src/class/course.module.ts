import { Module } from '@nestjs/common';
import { ClassService } from './course.service';
import { ClassController } from './course.constroller';

@Module({
  controllers: [ClassController],
  providers: [ClassService],
})
export class ClassModule {}
