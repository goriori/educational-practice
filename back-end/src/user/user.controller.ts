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
import { authUserDto, createUserDto, updateUserDto } from './user.dto';
import { User } from './user';

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

  @Post('/reg')
  async createOne(@Body() createUserDto: createUserDto, @Res() res: Response) {
    if (
      !createUserDto.name ||
      !createUserDto.lastName ||
      !createUserDto.password ||
      !createUserDto.phone
    )
      res.status(HttpStatus.BAD_REQUEST).json('missing parameter');
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

  @Post('/auth')
  async auth(@Body() authUserDto: authUserDto, @Res() res: Response) {
    if (!authUserDto.phone || !authUserDto.password)
      res.status(HttpStatus.BAD_REQUEST).json('missing parameter');
    const user = await this.userService.auth(authUserDto);
    if (!user)
      res.status(HttpStatus.UNAUTHORIZED).json('Not correct phone or password');
    return res.status(HttpStatus.OK).json(user);
  }
}
