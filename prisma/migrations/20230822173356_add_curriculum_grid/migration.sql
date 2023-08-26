/*
  Warnings:

  - You are about to drop the `classdisciplines` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `classteamdisciplines` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `coursedisciplines` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `classdisciplines` DROP FOREIGN KEY `classdisciplines_classId_fkey`;

-- DropForeignKey
ALTER TABLE `classdisciplines` DROP FOREIGN KEY `classdisciplines_disciplineId_fkey`;

-- DropForeignKey
ALTER TABLE `classteamdisciplines` DROP FOREIGN KEY `classteamdisciplines_classTeamId_fkey`;

-- DropForeignKey
ALTER TABLE `classteamdisciplines` DROP FOREIGN KEY `classteamdisciplines_disciplineId_fkey`;

-- DropForeignKey
ALTER TABLE `coursedisciplines` DROP FOREIGN KEY `coursedisciplines_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `coursedisciplines` DROP FOREIGN KEY `coursedisciplines_disciplineId_fkey`;

-- DropTable
DROP TABLE `classdisciplines`;

-- DropTable
DROP TABLE `classteamdisciplines`;

-- DropTable
DROP TABLE `coursedisciplines`;

-- CreateTable
CREATE TABLE `curriculumGrid` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `classId` INTEGER NOT NULL,
    `courseId` INTEGER NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `curriculumGrid` ADD CONSTRAINT `curriculumGrid_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `curriculumGrid` ADD CONSTRAINT `curriculumGrid_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `curriculumGrid` ADD CONSTRAINT `curriculumGrid_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
