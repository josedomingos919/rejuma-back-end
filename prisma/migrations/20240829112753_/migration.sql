-- AlterTable
ALTER TABLE `documentrequest` ADD COLUMN `price` DOUBLE NULL;

-- AlterTable
ALTER TABLE `registration` ADD COLUMN `previousClass` VARCHAR(191) NULL,
    ADD COLUMN `previousGroup` VARCHAR(191) NULL,
    ADD COLUMN `previousNumber` VARCHAR(191) NULL,
    ADD COLUMN `previousRoom` VARCHAR(191) NULL,
    ADD COLUMN `previousSchoolsName` VARCHAR(191) NULL;
