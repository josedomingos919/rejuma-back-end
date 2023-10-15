/*
  Warnings:

  - Added the required column `statusId` to the `invoice` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `invoice` ADD COLUMN `number` VARCHAR(191) NULL,
    ADD COLUMN `statusId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `invoice` ADD CONSTRAINT `invoice_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
