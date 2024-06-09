import { BelongsTo, Column, DataType, ForeignKey, HasMany, Table } from "sequelize-typescript";
import { BaseEntity } from "src/models/BaseEntity";
import { ApiProperty } from '@nestjs/swagger';
import { User } from "./User";

@Table({ tableName: "eco_trade", timestamps: false })
export class Trade extends BaseEntity<Trade> { 
    
    @ApiProperty({})
    @Column({ primaryKey: true, autoIncrement: true, type: DataType.INTEGER })
    tradeId: number;

    @ApiProperty({})
    @ForeignKey(() => User)
    @Column
    buyerId: number;
  
    @BelongsTo(() => User, "buyerId")
    buyer: User;

    @ApiProperty({})
    @ForeignKey(() => User)
    @Column
    sellerId: number;
  
    @BelongsTo(() => User, "sellerId")
    seller: User;

    @ApiProperty({})
    @Column({type: DataType.STRING(255)})
    buyerAddress: string;

    @ApiProperty({})
    @Column({type: DataType.STRING(255)})
    sellerAddress: string;

    @ApiProperty({})
    @Column({type: DataType.STRING(255)})
    tradeStatus: string;

    @ApiProperty({})
    @Column({type: DataType.FLOAT})
    pricePerUnit: number;

    @ApiProperty({})
    @Column({type: DataType.FLOAT})
    unitsForSale: number;

    @ApiProperty({})
    @Column({type: DataType.FLOAT})
    totalSold: number;

    @ApiProperty({})
    @Column({type: DataType.STRING(100)})
    energySource: string;

    @ApiProperty({})
    @Column({type: DataType.STRING(100)})
    active: boolean;

}