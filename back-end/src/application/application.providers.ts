import { Application } from './application.entity';

export const applicationProviders = [
  {
    provide: 'APPLICATION_REPOSITORY',
    useValue: Application,
  },
];