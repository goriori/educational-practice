import { Injectable, Inject } from '@nestjs/common';
import { createApplicationDto, updateApplicationDto } from './application.dto';
import { Application } from './application.entity';

@Injectable()
export class ApplicationService {
  constructor(
    @Inject('APPLICATION_REPOSITORY')
    private userRepository: typeof Application,
  ) {}

  async findAll(): Promise<Application[]> {
    return this.userRepository.findAll<Application>();
  }

  async findOne(id: number | string): Promise<Application> {
    return this.userRepository.findOne({ where: { id } });
  }

  async createOne(
    createApplicationDto: createApplicationDto,
  ): Promise<Application> {
    return this.userRepository.create({ ...createApplicationDto });
  }

  async updateOne(
    id: number | string,
    updateApplicationDto: updateApplicationDto,
  ): Promise<Application> {
    const foundUser = await this.findOne(id);
    return foundUser.update({ ...updateApplicationDto });
  }

  async deleteOne(id: number | string): Promise<number> {
    return this.userRepository.destroy({ where: { id } });
  }
}
