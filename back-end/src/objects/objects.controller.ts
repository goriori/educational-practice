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
import { ObjectsService } from './objects.service';
import { createObjectDto, updateObjectDto } from './objects.dto';

@Controller('objects')
export class ObjectsController {
  constructor(private objectService: ObjectsService) {}

  @Get()
  async findAll(@Res() res: Response) {
    const users = await this.objectService.findAll();
    return res.status(HttpStatus.OK).json(users);
  }

  @Get(':id')
  async findOne(@Param('id') id: string, @Res() res: Response) {
    const foundUser = await this.objectService.findOne(id);
    if (!foundUser) return res.status(HttpStatus.NOT_FOUND).json('Not found');
    return res.status(HttpStatus.OK).json(foundUser);
  }

  @Post()
  async createOne(
    @Body() createUserDto: createObjectDto,
    @Res() res: Response,
  ) {
    await this.objectService.createOne(createUserDto);
    return res.status(HttpStatus.CREATED).json('success created object');
  }

  @Put(':id')
  async updateOne(
    @Param('id') id: string,
    @Body() updateUserDto: updateObjectDto,
    @Res() res: Response,
  ) {
    const result = await this.objectService.updateOne(id, updateUserDto);
    return res
      .status(HttpStatus.OK)
      .json(`object success updated id: ${result.id}`);
  }

  @Delete(':id')
  async deleteOne(@Param('id') id: string, @Res() res: Response) {
    const result = await this.objectService.deleteOne(id);
    return result
      ? res.status(HttpStatus.OK).json(`object success deleted ${result}`)
      : res.status(HttpStatus.NOT_FOUND).json('Not found object');
  }
}
