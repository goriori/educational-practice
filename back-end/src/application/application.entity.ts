import { Table, Column, Model } from 'sequelize-typescript';

@Table
export class Application extends Model {
  @Column
  name: string;

  @Column
  surname: string;

  @Column
  lastName: string;

  @Column
  phone: string;

}
