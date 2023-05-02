-- DropForeignKey
ALTER TABLE `Registration` DROP FOREIGN KEY `Registration_courseId_fkey`;

-- AlterTable
ALTER TABLE `Registration` MODIFY `courseId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `Registration` ADD CONSTRAINT `Registration_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
