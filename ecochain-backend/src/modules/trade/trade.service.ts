
/*
https://docs.nestjs.com/providers#services
*/

import { Inject, Injectable } from '@nestjs/common';
import { TRADE } from 'src/constants/constants';
import { Trade } from 'src/models/Trade';

@Injectable()
export class TradeService {

    constructor(@Inject(TRADE) private readonly tradeRepo: typeof Trade) { }

    initiateTrade(trade: Trade) {
        return this.tradeRepo.create(trade);
    }

 }
