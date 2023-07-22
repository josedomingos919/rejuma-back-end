-- AlterTable
ALTER TABLE `student` ADD COLUMN `civilSate` VARCHAR(191) NULL,
    ADD COLUMN `emitOn` DATETIME(3) NULL,
    ADD COLUMN `isWorking` VARCHAR(191) NULL,
    ADD COLUMN `maternalAffiliation` VARCHAR(191) NULL,
    ADD COLUMN `municipality` VARCHAR(191) NULL,
    ADD COLUMN `natural` VARCHAR(191) NULL,
    ADD COLUMN `parentAffiliation` VARCHAR(191) NULL,
    ADD COLUMN `residence` VARCHAR(191) NULL,
    ADD COLUMN `sponsorOfEducation` VARCHAR(191) NULL,
    ADD COLUMN `validUntil` DATETIME(3) NULL,
    ADD COLUMN `work` VARCHAR(191) NULL,
    ADD COLUMN `workStation` VARCHAR(191) NULL;
