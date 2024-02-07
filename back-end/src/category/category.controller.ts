import {
  Body,
  Controller,
  Delete,
  Get,
  HttpStatus,
  Param,
  Post,
  Put,
  Res,
} from '@nestjs/common';
import { Response } from 'express';
import { CategoryService } from './category.service';
import { createCategoryDto, updateCategoryDto } from './category.dto';

@Controller('category')
export class CategoryController {
  constructor(private categoryService: CategoryService) {}

  @Get()
  async findAll(@Res() res: Response) {
    const users = await this.categoryService.findAll();
    return res.status(HttpStatus.OK).json(users);
  }

  @Get(':id')
  async findOne(@Param('id') id: string, @Res() res: Response) {
    const foundUser = await this.categoryService.findOne(id);
    if (!foundUser) return res.status(HttpStatus.NOT_FOUND).json('Not found');
    return res.status(HttpStatus.OK).json(foundUser);
  }

  @Post()
  async createOne(
    @Body() createUserDto: createCategoryDto,
    @Res() res: Response,
  ) {
    await this.categoryService.createOne(createUserDto);
    return res.status(HttpStatus.CREATED).json('success created category');
  }

  @Put(':id')
  async updateOne(
    @Param('id') id: string,
    @Body() updateUserDto: updateCategoryDto,
    @Res() res: Response,
  ) {
    const result = await this.categoryService.updateOne(id, updateUserDto);
    return res
      .status(HttpStatus.OK)
      .json(`category success updated id: ${result.id}`);
  }

  @Delete(':id')
  async deleteOne(@Param('id') id: string, @Res() res: Response) {
    const result = await this.categoryService.deleteOne(id);
    return result
      ? res.status(HttpStatus.OK).json(`category success deleted ${result}`)
      : res.status(HttpStatus.NOT_FOUND).json('Not found category');
  }
}
