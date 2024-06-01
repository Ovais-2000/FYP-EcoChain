
/*
https://docs.nestjs.com/providers#services
*/

import { Inject, Injectable } from '@nestjs/common';
import { Op } from 'sequelize';
import { TRADE } from 'src/constants/constants';
import { Trade } from 'src/models/Trade';

@Injectable()
export class TradeService {

    constructor(@Inject(TRADE) private readonly tradeRepo: typeof Trade) { }

    initiateTrade(trade: Trade) {
        return this.tradeRepo.create(trade);
    }

    async getMyTrades(_sellerId: number) {
        return this.tradeRepo.findAll({where: {sellerId: _sellerId}})
    }

    async getAllTrades(_sellerId: number) {
        return this.tradeRepo.findAll({where: {sellerId: {
            [Op.ne]: _sellerId,
        }}});
    }

    async getAllActiveTrades(_sellerId: number) {
        return this.tradeRepo.findAll({where: {sellerId: {
            [Op.ne]: _sellerId,
        }, active: true }});
    }

 }
