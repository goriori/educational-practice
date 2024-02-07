import { Module } from '@nestjs/common';
import { ObjectsController } from './objects.controller';
import { DatabaseModule } from '../database/database.module';
import { objectsProviders } from './objects.providers';
import { ObjectsService } from './objects.service';

@Module({
  imports: [DatabaseModule],
  controllers: [ObjectsController],
  providers: [ObjectsService, ...objectsProviders],
})
export class ObjectsModule {}
