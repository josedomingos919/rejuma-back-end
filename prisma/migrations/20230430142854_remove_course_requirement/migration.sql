-- DropForeignKey
ALTER TABLE `classteam` DROP FOREIGN KEY `ClassTeam_courseId_fkey`;

-- AlterTable
ALTER TABLE `classteam` MODIFY `courseId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `ClassTeam` ADD CONSTRAINT `ClassTeam_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `Course`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
