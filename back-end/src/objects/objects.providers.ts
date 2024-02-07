import {Objects} from "./objects.entity";


export const objectsProviders = [
    {
        provide: 'OBJECTS_REPOSITORY',
        useValue: Objects,
    },
];