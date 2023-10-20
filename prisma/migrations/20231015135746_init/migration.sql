/*
  Warnings:

  - Added the required column `multa` to the `payment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `total` to the `payment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `payment` ADD COLUMN `multa` DOUBLE NOT NULL,
    ADD COLUMN `total` DOUBLE NOT NULL;

-- CreateTable
CREATE TABLE `invoice` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `registrationId` INTEGER NOT NULL,
    `subTotal` DOUBLE NOT NULL,
    `descontoSaldo` DOUBLE NOT NULL,
    `total` DOUBLE NOT NULL,
    `valorDado` DOUBLE NOT NULL,
    `troco` DOUBLE NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `invoice` ADD CONSTRAINT `invoice_registrationId_fkey` FOREIGN KEY (`registrationId`) REFERENCES `registration`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
