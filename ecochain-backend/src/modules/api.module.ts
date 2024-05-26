/*
https://docs.nestjs.com/modules
*/

import { Module } from '@nestjs/common';
import { UserModule } from './user/user.module';
import { TradeModule } from './trade/trade.module';

@Module({
    imports: [
        UserModule, TradeModule
    ],
    controllers: [],
    providers: [],
})
export class ApiModule { }
