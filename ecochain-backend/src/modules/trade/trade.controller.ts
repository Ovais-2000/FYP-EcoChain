/*
https://docs.nestjs.com/controllers#controllers
*/

import { Body, Controller, Get, Post, Query } from '@nestjs/common';
import { ApiResponse, ApiTags } from '@nestjs/swagger';
import { Trade } from 'src/models/Trade';
import { TradeService } from './trade.service';

@Controller('trade')
@ApiTags('trade')

export class TradeController {

    constructor(private readonly tradeService: TradeService) {
    }

    @Post('/initiateTrade') 
    @ApiResponse({ status: 201, description: 'The record has been successfully created.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 400, description: 'Bad Request.' })
    async initiateTrade( @Body() body: Trade) {
        return await this.tradeService.initiateTrade(body);
    }

    @Get('/getMyTrades')
    async getMyTrades(@Query() query: any) {
        const {sellerId} = query;
        return this.tradeService.getMyTrades(sellerId);
    }

    @Get('/getAllTrades')
    async getAllTrades(@Query() query: any) {
        const {sellerId} = query;
        return this.tradeService.getAllTrades(sellerId);
    }

    @Get('/getAllActiveTrades')
    async getAllActiveTrades(@Query() query: any) {
        const {sellerId} = query;
        return this.tradeService.getAllActiveTrades(sellerId);
    }
 }
