import { Column, DataType, HasMany, Table } from "sequelize-typescript";
import { BaseEntity } from "src/models/BaseEntity";
import { ApiProperty } from '@nestjs/swagger';

@Table({ tableName: "eco_user", timestamps: false })
export class User extends BaseEntity<User> { 
    
    @ApiProperty({})
    @Column({ primaryKey: true, autoIncrement: true, type: DataType.INTEGER })
    userId: number;

    @ApiProperty({})
    @Column({ type: DataType.STRING(100) })
    firstName: string;

    @ApiProperty({})
    @Column({ type: DataType.STRING(100) })
    lastName: string;

    @ApiProperty({})
    @Column({ type: DataType.STRING(100) })
    contact:string;

    @ApiProperty({})
    @Column({ type: DataType.STRING(100) })
    location: string;

    @ApiProperty({})
    @Column({ type: DataType.STRING(500) })
    email: string;

    @ApiProperty({})
    @Column({ type: DataType.STRING(500) })
    password: string;
    
    @ApiProperty({})
    @Column({ type: DataType.STRING(500) })
    lng: string;

    @Column({ type: DataType.STRING(500) })
    @ApiProperty({})
    lat: string;
    
    @Column({type: DataType.STRING(500)})
    @ApiProperty({})
    walletAddress: string
    

}