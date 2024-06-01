import { Body, Controller, Get, Param, Post, Query, Req } from "@nestjs/common";

import { ApiResponse, ApiTags } from "@nestjs/swagger";
import { User } from "src/models/User";
import { UserService } from "./user.service";
import { LoginDto } from "src/interface";
import { Public } from "src/guard/public";
@Controller('user')
@ApiTags('user')
export class UserController {

    constructor(private userService: UserService) {}

    @Public()
    @Post('/register')
    @ApiResponse({ status: 201, description: 'The record has been successfully created.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 400, description: 'Bad Request.' })
    async register( @Body() body: User) {
        return await this.userService.registerUser(body);
    }

    @Public()
    @Post('/login')
    @ApiResponse({ status: 201, description: 'The record has been successfully created.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 400, description: 'Bad Request.' })
    async login(@Body() body: LoginDto) {
        return await this.userService.login(body);
    }

    @Post('/updateWalletAddress/:id/:walletAddress')
    @ApiResponse({ status: 201, description: 'The record has been successfully created.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 400, description: 'Bad Request.' })
    async updateWalletAddress(@Param('id') userId: number, @Param('walletAddress') walletAddress:string) {
        return this.userService.updateWalletAddress(userId, walletAddress);
    }

    @Get('/getUserById')
    async getUserById(@Query() query: any) {
        const {userId} = query;
        return this.userService.getUserById(userId);
    }
}
