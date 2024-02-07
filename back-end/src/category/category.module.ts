import { Module } from '@nestjs/common';
import { CategoryController } from './category.controller';
import { Category } from './category';
import { DatabaseModule } from '../database/database.module';
import { CategoryService } from './category.service';
import { categoryProviders } from './category.providers';

@Module({
  imports: [DatabaseModule],
  controllers: [CategoryController],
  providers: [CategoryService, ...categoryProviders],
})
export class CategoryModule {}
