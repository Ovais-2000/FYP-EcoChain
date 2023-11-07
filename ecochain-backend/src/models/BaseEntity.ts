import { Column, DataType, Model } from "sequelize-typescript";


export class BaseEntity<T> extends Model<T, T> {
    @Column({ type: DataType.DATE, defaultValue: new Date() })
    createdAt?: Date;
    @Column({ type: DataType.INTEGER })
    createdBy?: number;
    @Column({ type: DataType.BOOLEAN, defaultValue: false })
    deleted: boolean;
    @Column({ type: DataType.DATE, defaultValue: new Date() })
    updatedAt: Date;
    @Column({ type: DataType.INTEGER })
    updatedBy: number;

}