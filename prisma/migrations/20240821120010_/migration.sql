/*
  Warnings:

  - Added the required column `documentTypeId` to the `documentRequest` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `documentrequest` ADD COLUMN `documentTypeId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `documentRequest` ADD CONSTRAINT `documentRequest_documentTypeId_fkey` FOREIGN KEY (`documentTypeId`) REFERENCES `documentType`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
