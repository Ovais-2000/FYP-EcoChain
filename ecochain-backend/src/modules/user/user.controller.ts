import { Body, Controller, Post, Req } from "@nestjs/common";

import { ApiTags } from "@nestjs/swagger";
import { User } from "src/models/User";
import { UserService } from "./user.service";
import { LoginDto } from "src/interface";

@Controller('user')
@ApiTags('user')
export class UserController {

    constructor(private userService: UserService) {}

    @Post('/register')
    async register( @Body() body: User) {
        return await this.userService.registerUser(body);
    }

    @Post('/login')
    async login(@Body() body: LoginDto) {
        return await this.userService.login(body);
    }
}
