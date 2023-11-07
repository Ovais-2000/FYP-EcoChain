/*
https://docs.nestjs.com/modules
*/

import { Module } from '@nestjs/common';
import { DatabaseConfigService } from './database.providers';
import { SequelizeModule } from '@nestjs/sequelize';
import { models } from 'src/constants/constants';
import { modelProviders } from './model.provider';

@Module({
    imports: [
        SequelizeModule.forRootAsync({useClass: DatabaseConfigService}),
        SequelizeModule.forFeature(models),
    ],
    controllers: [],
})
export class DatabaseModule { }
