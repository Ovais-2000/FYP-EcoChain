import { TradeController } from './trade.controller';
/*
https://docs.nestjs.com/modules
*/

import { Module } from '@nestjs/common';
import { DatabaseModule } from 'src/config/database/database.module';
import { modelProviders } from 'src/config/database/model.provider';
import { TradeService } from './trade.service';

@Module({
    imports: [
        DatabaseModule,
    ],
    controllers: [
        TradeController, ],
    providers: [TradeService, ...modelProviders],
})
export class TradeModule { }
