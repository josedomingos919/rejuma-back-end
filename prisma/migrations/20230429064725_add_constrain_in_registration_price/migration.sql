/*
  Warnings:

  - A unique constraint covering the columns `[name,schoolYearId,classId]` on the table `ClassTeam` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[classId,courseId]` on the table `RegistrationPrice` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `registrationprice` DROP FOREIGN KEY `RegistrationPrice_courseId_fkey`;

-- DropIndex
DROP INDEX `ClassTeam_name_key` ON `classteam`;

-- AlterTable
ALTER TABLE `registrationprice` MODIFY `courseId` INTEGER NULL;

-- CreateIndex
CREATE UNIQUE INDEX `ClassTeam_name_schoolYearId_classId_key` ON `ClassTeam`(`name`, `schoolYearId`, `classId`);

-- CreateIndex
CREATE UNIQUE INDEX `RegistrationPrice_classId_courseId_key` ON `RegistrationPrice`(`classId`, `courseId`);

-- AddForeignKey
ALTER TABLE `RegistrationPrice` ADD CONSTRAINT `RegistrationPrice_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `Course`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
