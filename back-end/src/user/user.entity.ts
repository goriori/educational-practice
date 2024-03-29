import { Table, Column, Model } from 'sequelize-typescript';

@Table
export class User extends Model {
  @Column
  name: string;

  @Column
  lastName: string;

  @Column
  phone: string;

  @Column
  address: string;

  @Column
  bonusBalance: number;

  @Column
  login: string;

  @Column
  password: string;
}
