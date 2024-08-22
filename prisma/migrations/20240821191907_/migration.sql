/*
  Warnings:

  - Added the required column `statusId` to the `documentCategory` table without a default value. This is not possible if the table is not empty.
  - Added the required column `statusId` to the `documentType` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `documentcategory` ADD COLUMN `statusId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `documentrequest` ADD COLUMN `deletedAt` DATETIME(3) NULL;

-- AlterTable
ALTER TABLE `documenttype` ADD COLUMN `statusId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `documentCategory` ADD CONSTRAINT `documentCategory_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `documentType` ADD CONSTRAINT `documentType_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
