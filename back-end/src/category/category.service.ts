import { Inject, Injectable } from '@nestjs/common';
import { Category } from './category.entity';
import { createCategoryDto, updateCategoryDto } from './category.dto';

@Injectable()
export class CategoryService {
  constructor(
    @Inject('CATEGORY_REPOSITORY')
    private categoryRepository: typeof Category,
  ) {}

  async findAll(): Promise<Category[]> {
    return this.categoryRepository.findAll<Category>();
  }

  async findOne(id: number | string): Promise<Category> {
    return this.categoryRepository.findOne({ where: { id } });
  }

  async createOne(createUserDto: createCategoryDto): Promise<Category> {
    return this.categoryRepository.create({ ...createUserDto });
  }

  async updateOne(
    id: number | string,
    updateUserDto: updateCategoryDto,
  ): Promise<Category> {
    const foundUser = await this.findOne(id);
    return foundUser.update({ ...updateUserDto });
  }

  async deleteOne(id: number | string): Promise<number> {
    return this.categoryRepository.destroy({ where: { id } });
  }
}
