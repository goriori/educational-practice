import { Module } from '@nestjs/common';
import { ApplicationService } from './application.service';
import { ApplicationController } from './application.controller';
import { Application } from './application';
import { applicationProviders } from './application.providers';
import { DatabaseModule } from '../database/database.module';

@Module({
  imports: [DatabaseModule],
  providers: [ApplicationService, Application, ...applicationProviders],
  controllers: [ApplicationController],
})
export class ApplicationModule {}
