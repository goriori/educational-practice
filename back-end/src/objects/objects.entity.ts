import { Table, Column, Model } from 'sequelize-typescript';

@Table
export class Objects extends Model {
  @Column
  name: string;

  @Column
  price: number;
}