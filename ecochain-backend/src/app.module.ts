import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ApiModule } from './modules/api.module';
import { JwtService } from '@nestjs/jwt';
import { APP_GUARD } from '@nestjs/core';
import { AuthGuard } from './guard/auth.guard';

@Module({
  imports: [ApiModule],
  controllers: [AppController],
  providers: [AppService, JwtService, {
    provide: APP_GUARD,
    useClass: AuthGuard,
  },],
})
export class AppModule {}
