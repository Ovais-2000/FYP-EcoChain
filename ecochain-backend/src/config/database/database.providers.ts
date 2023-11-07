import { SequelizeModuleOptions, SequelizeOptionsFactory } from '@nestjs/sequelize';
import { models } from 'src/constants/constants';
import { env } from '../env/env.helper';


type Dialect = 'mysql' | 'postgres' | 'sqlite' | 'mariadb' | 'mssql';

//@Injectable({ scope: Scope.REQUEST })
export class DatabaseConfigService implements SequelizeOptionsFactory {

  createSequelizeOptions(): SequelizeModuleOptions {
    let database = env.DB_NAME;
  
    return {
      dialect: env.DB_DIALECT as Dialect,
      host: env.DB_HOST,
      port: env.DB_PORT,
      username: env.DB_USER,
      password: env.DB_PASSWORD,
      database,
      models:models,
      synchronize: false,
      logging: false//console.log,
    };
  }
}
