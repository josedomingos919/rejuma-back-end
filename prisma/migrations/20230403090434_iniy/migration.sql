-- AlterTable
ALTER TABLE `classteam` ADD COLUMN `statusId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `ClassTeam` ADD CONSTRAINT `ClassTeam_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
