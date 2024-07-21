-- AlterTable
ALTER TABLE `schoolyear` ADD COLUMN `statusId` INTEGER NULL,
    MODIFY `year` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `schoolyear` ADD CONSTRAINT `schoolyear_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
