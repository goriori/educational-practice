import { Module } from '@nestjs/common';
import { usersProviders } from './user.providers';
import { DatabaseModule } from '../database/database.module';
import { UserController } from './user.controller';
import { UserService } from './user.service';

@Module({
  imports: [DatabaseModule],
  controllers: [UserController],
  providers: [UserService, ...usersProviders],
})
export class UserModule {}
