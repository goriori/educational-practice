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
        host: '9d1701f9ce28.hosting.myjino.ru',
        port: 3306,
        username: 'j78004700',
        password: 'duKsC54f',
        database: 'j78004700',
      });
      sequelize.addModels([User, Category, Objects, Application]);
      await sequelize.sync({ alter: true });
      return sequelize;
    },
  },
];
