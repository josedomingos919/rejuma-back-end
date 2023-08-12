-- AlterTable
ALTER TABLE `registration` ADD COLUMN `employeeId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `registration` ADD CONSTRAINT `registration_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
