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
import { UserService } from './user.service';
import { createUserDto, updateUserDto } from './user.dto';

@Controller('user')
export class UserController {
  constructor(private userService: UserService) {}

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
  async createOne(@Body() createUserDto: createUserDto, @Res() res: Response) {
    await this.userService.createOne(createUserDto);
    return res.status(HttpStatus.CREATED).json('success created user');
  }

  @Put(':id')
  async updateOne(
    @Param('id') id: string,
    @Body() updateUserDto: updateUserDto,
    @Res() res: Response,
  ) {
    const result = await this.userService.updateOne(id, updateUserDto);
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
