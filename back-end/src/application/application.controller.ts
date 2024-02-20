import {
  Controller,
  Get,
  Req,
  Res,
  HttpStatus,
  Param,
  Post,
  Body,
  Put,
  Delete,
} from '@nestjs/common';
import { Request, Response } from 'express';
import { createApplicationDto, updateApplicationDto } from './application.dto';
import { ApplicationService } from './application.service';

@Controller('applications')
export class ApplicationController {
  constructor(private userService: ApplicationService) {}

  @Get()
  async findAll(@Res() res: Response) {
    const users = await this.userService.findAll();
    return res.status(HttpStatus.OK).json(users);
  }

  @Get(':id')
  async findOne(@Param('id') id: string, @Res() res: Response) {
    const foundUser = await this.userService.findOne(id);
    if (!foundUser) return res.status(HttpStatus.NOT_FOUND).json('Not found');
    return res.status(HttpStatus.OK).json(foundUser);
  }

  @Post()
  async createOne(
    @Body() createApplicationDto: createApplicationDto,
    @Res() res: Response,
  ) {
    await this.userService.createOne(createApplicationDto);
    return res.status(HttpStatus.CREATED).json('success created user');
  }

  @Put(':id')
  async updateOne(
    @Param('id') id: string,
    @Body() updateApplicationDto: updateApplicationDto,
    @Res() res: Response,
  ) {
    const result = await this.userService.updateOne(id, updateApplicationDto);
    return res
      .status(HttpStatus.OK)
      .json(`user success updated id: ${result.id}`);
  }

  @Delete(':id')
  async deleteOne(@Param('id') id: string, @Res() res: Response) {
    const result = await this.userService.deleteOne(id);
    return result
      ? res.status(HttpStatus.OK).json(`user success deleted ${result}`)
      : res.status(HttpStatus.NOT_FOUND).json('Not found user');
  }
}
