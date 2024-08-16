/*
  Warnings:

  - You are about to drop the column `ibanDestination` on the `paymentmethods` table. All the data in the column will be lost.
  - Added the required column `bankAccountId` to the `PaymentMethods` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `paymentmethods` DROP COLUMN `ibanDestination`,
    ADD COLUMN `bankAccountId` INTEGER NOT NULL;

-- CreateTable
CREATE TABLE `BankAccount` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `number` VARCHAR(191) NOT NULL,
    `iban` VARCHAR(191) NOT NULL,
    `titular` VARCHAR(191) NOT NULL,
    `banco` VARCHAR(191) NULL,

    UNIQUE INDEX `BankAccount_number_key`(`number`),
    UNIQUE INDEX `BankAccount_iban_key`(`iban`),
    UNIQUE INDEX `BankAccount_titular_key`(`titular`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `PaymentMethods` ADD CONSTRAINT `PaymentMethods_bankAccountId_fkey` FOREIGN KEY (`bankAccountId`) REFERENCES `BankAccount`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
