-- AlterTable
ALTER TABLE `teachers` ADD COLUMN `statusId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `teachers` ADD CONSTRAINT `teachers_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
