import { Injectable, Inject } from '@nestjs/common';
import { Objects } from './objects.entity';
import { createObjectDto, updateObjectDto } from './objects.dto';

@Injectable()
export class ObjectsService {
  constructor(
    @Inject('OBJECTS_REPOSITORY')
    private objectsRepository: typeof Objects,
  ) {}

  async findAll(): Promise<Objects[]> {
    return this.objectsRepository.findAll<Objects>();
  }

  async findOne(id: number | string): Promise<Objects> {
    return this.objectsRepository.findOne({ where: { id } });
  }

  async createOne(createUserDto: createObjectDto): Promise<Objects> {
    return this.objectsRepository.create({ ...createUserDto });
  }

  async updateOne(
    id: number | string,
    updateUserDto: updateObjectDto,
  ): Promise<Objects> {
    const foundUser = await this.findOne(id);
    return foundUser.update({ ...updateUserDto });
  }

  async deleteOne(id: number | string): Promise<number> {
    return this.objectsRepository.destroy({ where: { id } });
  }
}
