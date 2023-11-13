import { Column, DataType, HasMany, Table } from "sequelize-typescript";
import { BaseEntity } from "src/models/BaseEntity";

@Table({ tableName: "eco_user", timestamps: false })
export class User extends BaseEntity<User> { 
    
    @Column({ primaryKey: true, autoIncrement: true, type: DataType.INTEGER })
    userId: number;
    @Column({ type: DataType.STRING(100) })
    firstName: string;
    @Column({ type: DataType.STRING(100) })
    lastName: string;
    @Column({ type: DataType.STRING(100) })
    contact:string;
    @Column({ type: DataType.STRING(100) })
    location: string;
    @Column({ type: DataType.STRING(500) })
    email: string;
    @Column({ type: DataType.STRING(500) })
    password: string;
    

}