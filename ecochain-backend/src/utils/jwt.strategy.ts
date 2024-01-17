import { ExtractJwt, Strategy } from 'passport-jwt';
import { PassportStrategy } from '@nestjs/passport';
import { Injectable, UnauthorizedException } from '@nestjs/common';
import { UserService } from 'src/modules/user/user.service';
import { env } from 'src/config/env/env.helper';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(private authService: UserService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey: env.JWT_STRATEGY,
    });
  }

  async validate(email: string, password: string): Promise<any> {
    const user = await this.authService.validateUser({email: email, password: password });
    if (!user) {
      throw new UnauthorizedException();
    }
    return user;
  }
}