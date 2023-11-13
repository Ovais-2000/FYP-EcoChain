/*
https://docs.nestjs.com/modules
*/

import { Module } from '@nestjs/common';
import { UserController } from './user.controller';
import { UserService } from './user.service';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';
import { DatabaseModule } from 'src/config/database/database.module';
import { modelProviders } from 'src/config/database/model.provider';
import { env } from 'src/config/env/env.helper';

@Module({
    imports: [
        PassportModule,
        DatabaseModule,
        JwtModule.register({
            secret: env.JWT_STRATEGY,
            signOptions: { expiresIn: '1d' }, // You can adjust the token expiration time
        }),
    ],
    controllers: [UserController],
    providers: [UserService, ...modelProviders],
})
export class UserModule { }
