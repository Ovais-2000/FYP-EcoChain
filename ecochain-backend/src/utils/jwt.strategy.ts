import { ExtractJwt, Strategy } from 'passport-jwt';
import { PassportStrategy } from '@nestjs/passport';
import { Injectable, UnauthorizedException } from '@nestjs/common';
import { UserService } from 'src/modules/user/user.service';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(private authService: UserService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey: ',sgdfiusnwufzkc dw9fscnskcnaiudgqai s j jvbsdiuchsocnsadiochsaoicncvsdk iufgskj sd8chaocjk vuwg',
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