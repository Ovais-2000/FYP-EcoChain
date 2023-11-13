import { Inject, Injectable } from "@nestjs/common";
import { USER } from "src/constants/constants";
import { User } from "src/models/User";
import * as bcrypt from 'bcrypt';
import { LoginDto } from "src/interface";
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class UserService {

    constructor(@Inject(USER) private readonly userRepository: typeof User, private readonly jwtService: JwtService) { }

    async registerUser(user: User) {
        const hashedPassword = await bcrypt.hash(user.password, 10);
        user.password = hashedPassword;
        return this.userRepository.create(user);
    }

    async findOne(email: string): Promise<User | undefined> {
        return this.userRepository.findOne({ where: { email: email } });
    }

    async validateUser(req: LoginDto) {
        let user = await this.findOne(req.email) as User;

        let matchPass = await bcrypt.compare(req.password, user.password)

        if (user && matchPass) {
            return user;
        }
        return null;
    }

    async login(req: LoginDto) {
        let user = await this.validateUser(req);
        console.log('user', user);
        
        if (user) {
            return {
                data: user,
                token : this.jwtService.sign({email: user.email, userId: user.userId }),
                message: 'Logged In Successfully',
                status: 200
            }
        }
        return {
             
        }
    }

}