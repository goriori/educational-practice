import { Sequelize } from 'sequelize-typescript';
import { User } from '../user/user.entity';
import { Category } from '../category/category.entity';
import { Objects } from '../objects/objects.entity';
import { Application } from '../application/application.entity';

export const databaseProviders = [
  {
    provide: 'SEQUELIZE',
    useFactory: async () => {
      const sequelize = new Sequelize({
        dialect: 'mysql',
        host: 'localhost',
        port: 3306,
        username: 'root',
        password: '',
        database: 'gleaming_сlean',
      });
      sequelize.addModels([User, Category, Objects, Application]);
      await sequelize.sync();
      return sequelize;
    },
  },
];
