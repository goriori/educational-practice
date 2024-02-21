import { Injectable, Inject } from '@nestjs/common';
import { User } from './user.entity';
import {
  authUserDto,
  createUserDto,
  updateUserDto,
} from './user.dto';

@Injectable()
export class UserService {
  constructor(
    @Inject('USER_REPOSITORY')
    private userRepository: typeof User,
  ) {}

  async findAll(): Promise<User[]> {
    return this.userRepository.findAll<User>();
  }

  async findOne(id: number | string): Promise<User> {
    return this.userRepository.findOne({ where: { id } });
  }

  async createOne(createUserDto: createUserDto): Promise<User> {
    return this.userRepository.create({ ...createUserDto });
  }

  async updateOne(
    id: number | string,
    updateUserDto: updateUserDto,
  ): Promise<User> {
    const foundUser = await this.findOne(id);
    return foundUser.update({ ...updateUserDto });
  }

  async deleteOne(id: number | string): Promise<number> {
    return this.userRepository.destroy({ where: { id } });
  }

  async auth(authUserDto: authUserDto) {
    const { phone, password } = authUserDto;
    const user = await this.userRepository.findOne({
      where: { phone, password },
    });
    if (!user) return false;
    return user;
  }
}
