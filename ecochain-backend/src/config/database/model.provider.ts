import { TRADE, USER } from "src/constants/constants";
import { Trade } from "src/models/Trade";
import { User } from "src/models/User";



export const modelProviders = [
    {
        provide: USER,
        useValue: User
    },{
        provide: TRADE,
        useValue: Trade
    },

];
