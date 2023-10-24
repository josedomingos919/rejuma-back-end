/*
  Warnings:

  - Added the required column `initialDate` to the `months` table without a default value. This is not possible if the table is not empty.
  - Added the required column `limitDate` to the `months` table without a default value. This is not possible if the table is not empty.
  - Added the required column `schoolYearId` to the `months` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `months` ADD COLUMN `initialDate` DATETIME(3) NOT NULL,
    ADD COLUMN `limitDate` DATETIME(3) NOT NULL,
    ADD COLUMN `schoolYearId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `months` ADD CONSTRAINT `months_schoolYearId_fkey` FOREIGN KEY (`schoolYearId`) REFERENCES `schoolyear`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
