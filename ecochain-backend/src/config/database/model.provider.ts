import { USER } from "src/constants/constants";
import { User } from "src/models/User";



export const modelProviders = [
    {
        provide: USER,
        useValue: User
    },

];
