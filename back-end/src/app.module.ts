import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { DatabaseService } from './database/database.service';
import { DatabaseModule } from './database/database.module';
import { CategoryModule } from './category/category.module';
import { ObjectsModule } from './objects/objects.module';

@Module({
  imports: [UserModule, DatabaseModule, CategoryModule, ObjectsModule],
  controllers: [AppController],
  providers: [AppService, DatabaseService],
})
export class AppModule {}
