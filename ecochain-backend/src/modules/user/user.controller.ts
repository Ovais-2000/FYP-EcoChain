import { Body, Controller, Post, Req } from "@nestjs/common";

import { ApiResponse, ApiTags } from "@nestjs/swagger";
import { User } from "src/models/User";
import { UserService } from "./user.service";
import { LoginDto } from "src/interface";

@Controller('user')
@ApiTags('user')
export class UserController {

    constructor(private userService: UserService) {}

    @Post('/register')
    @ApiResponse({ status: 201, description: 'The record has been successfully created.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 400, description: 'Bad Request.' })
    async register( @Body() body: User) {
        return await this.userService.registerUser(body);
    }

    @Post('/login')
    @ApiResponse({ status: 201, description: 'The record has been successfully created.' })
    @ApiResponse({ status: 403, description: 'Forbidden.' })
    @ApiResponse({ status: 400, description: 'Bad Request.' })
    async login(@Body() body: LoginDto) {
        return await this.userService.login(body);
    }
}
