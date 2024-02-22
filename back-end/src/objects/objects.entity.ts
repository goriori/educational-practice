import { Table, Column, Model, BelongsTo } from 'sequelize-typescript';
import { Category } from '../category/category.entity';

@Table
export class Objects extends Model {
  @Column
  name: string;

  @Column
  image: string;

  @Column('TEXT')
  description: string;

  @Column
  price: number;

  @Column
  bonus: number;

  @BelongsTo(() => Category, 'categoryId')
  category: number;
}
