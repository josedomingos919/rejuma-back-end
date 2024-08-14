-- AlterTable
ALTER TABLE `paymentmethods` ADD COLUMN `date` DATETIME(3) NULL,
    ADD COLUMN `ibanDestination` VARCHAR(191) NULL,
    ADD COLUMN `ibanRemitent` VARCHAR(191) NULL,
    ADD COLUMN `transactionNumber` VARCHAR(191) NULL;
