-- AlterTable
ALTER TABLE `registrationprice` ADD COLUMN `examePrice` DOUBLE NULL,
    ADD COLUMN `registrationMulta` DOUBLE NULL,
    MODIFY `registrationPrice` DOUBLE NULL,
    MODIFY `reregistrationPrice` DOUBLE NULL,
    MODIFY `monthPrice` DOUBLE NULL;
