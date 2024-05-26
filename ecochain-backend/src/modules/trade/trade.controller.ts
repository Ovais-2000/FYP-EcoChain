/*
https://docs.nestjs.com/controllers#controllers
*/

import { Body, Controller, Post } from '@nestjs/common';
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
 }
