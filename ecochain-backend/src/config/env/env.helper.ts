
import * as devEnv from './environment.development'
import * as prodEnv from './environment.production'


export const env = process.env.NODE_ENV == 'development' ? devEnv.environment : prodEnv.environment;
 