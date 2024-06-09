
/*
https://docs.nestjs.com/providers#services
*/

import { Inject, Injectable } from '@nestjs/common';
import { Op } from 'sequelize';
import { TRADE } from 'src/constants/constants';
import { Trade } from 'src/models/Trade';
import { User } from 'src/models/User';

@Injectable()
export class TradeService {

    constructor(@Inject(TRADE) private readonly tradeRepo: typeof Trade) { }

    initiateTrade(trade: Trade) {
        return this.tradeRepo.create(trade);
    }

    async getMyTrades(_sellerId: number) {
        return this.tradeRepo.findAll({ where: { sellerId: _sellerId, deleted: false }, include: [User] },)
    }

    async getAllTrades(_sellerId: number) {
        return this.tradeRepo.findAll({
            where: {
                sellerId: {
                    [Op.ne]: _sellerId,
                }, deleted: false
            }, include: [User]
        });
    }

    async getAllActiveTrades(_sellerId: number) {
        return this.tradeRepo.findAll({
            where: {
                sellerId: {
                    [Op.ne]: _sellerId,
                }, active: true, deleted: false
            }, include: [User]
        });
    }

    async getTradeByTradeId(tradeId: number) {
        return this.tradeRepo.findOne({where: {tradeId: tradeId}, include: [User]})
    }

    async deleteTrade(tradeId: number) {
        let trade = await this.getTradeByTradeId(tradeId);
        trade.deleted = true;
        trade.active = false;
        trade.save();
    }

    async update(id: number, entity: Trade) {
        return this.tradeRepo.update({ ...entity }, { where: { tradeId: id } });
    }

    async buy(tradeId: number, units: number) {
        let trade = await this.getTradeByTradeId(tradeId);
        trade.totalSold = units;
        trade.unitsForSale -= units;
        if (trade.unitsForSale && trade.unitsForSale <= 0)
            trade.active = false;
    }

}
