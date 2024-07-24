-- AlterTable
ALTER TABLE `registrationprice` ADD COLUMN `schoolYearId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `registrationprice` ADD CONSTRAINT `registrationprice_schoolYearId_fkey` FOREIGN KEY (`schoolYearId`) REFERENCES `schoolyear`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
