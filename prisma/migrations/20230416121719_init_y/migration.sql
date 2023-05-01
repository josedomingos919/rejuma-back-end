/*
  Warnings:

  - You are about to drop the `teacherDisciplines` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `teacherDisciplines` DROP FOREIGN KEY `teacherDisciplines_disciplineId_fkey`;

-- DropForeignKey
ALTER TABLE `teacherDisciplines` DROP FOREIGN KEY `teacherDisciplines_teacherId_fkey`;

-- DropTable
DROP TABLE `teacherDisciplines`;

-- CreateTable
CREATE TABLE `teacherdisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `teacherId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `teacherdisciplines` ADD CONSTRAINT `teacherdisciplines_teacherId_fkey` FOREIGN KEY (`teacherId`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teacherdisciplines` ADD CONSTRAINT `teacherdisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
