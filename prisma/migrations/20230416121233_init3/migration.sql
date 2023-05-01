/*
  Warnings:

  - You are about to drop the `Class` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ClassDisciplines` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ClassTeam` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ClassTeamDisciplines` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ClassTeamTeacher` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Classroom` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Country` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Course` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CourseDisciplines` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Discipline` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Office` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Province` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `RegistrationPrice` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SchoolYear` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Student` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `ClassDisciplines` DROP FOREIGN KEY `ClassDisciplines_classId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassDisciplines` DROP FOREIGN KEY `ClassDisciplines_disciplineId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeam` DROP FOREIGN KEY `ClassTeam_classId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeam` DROP FOREIGN KEY `ClassTeam_classroomId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeam` DROP FOREIGN KEY `ClassTeam_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeam` DROP FOREIGN KEY `ClassTeam_schoolYearId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeam` DROP FOREIGN KEY `ClassTeam_statusId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeamDisciplines` DROP FOREIGN KEY `ClassTeamDisciplines_classTeamId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeamDisciplines` DROP FOREIGN KEY `ClassTeamDisciplines_disciplineId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeamTeacher` DROP FOREIGN KEY `ClassTeamTeacher_classTeamId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeamTeacher` DROP FOREIGN KEY `ClassTeamTeacher_disciplineId_fkey`;

-- DropForeignKey
ALTER TABLE `ClassTeamTeacher` DROP FOREIGN KEY `ClassTeamTeacher_teacherId_fkey`;

-- DropForeignKey
ALTER TABLE `CourseDisciplines` DROP FOREIGN KEY `CourseDisciplines_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `CourseDisciplines` DROP FOREIGN KEY `CourseDisciplines_disciplineId_fkey`;

-- DropForeignKey
ALTER TABLE `Province` DROP FOREIGN KEY `Province_countryId_fkey`;

-- DropForeignKey
ALTER TABLE `RegistrationPrice` DROP FOREIGN KEY `RegistrationPrice_classId_fkey`;

-- DropForeignKey
ALTER TABLE `RegistrationPrice` DROP FOREIGN KEY `RegistrationPrice_courseId_fkey`;

-- DropForeignKey
ALTER TABLE `Student` DROP FOREIGN KEY `Student_countryId_fkey`;

-- DropForeignKey
ALTER TABLE `Student` DROP FOREIGN KEY `Student_provinceId_fkey`;

-- DropForeignKey
ALTER TABLE `Student` DROP FOREIGN KEY `Student_statusId_fkey`;

-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `employees_countryId_fkey`;

-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `employees_officeId_fkey`;

-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `employees_provinceId_fkey`;

-- DropForeignKey
ALTER TABLE `teacherDisciplines` DROP FOREIGN KEY `teacherDisciplines_disciplineId_fkey`;

-- DropTable
DROP TABLE `Class`;

-- DropTable
DROP TABLE `ClassDisciplines`;

-- DropTable
DROP TABLE `ClassTeam`;

-- DropTable
DROP TABLE `ClassTeamDisciplines`;

-- DropTable
DROP TABLE `ClassTeamTeacher`;

-- DropTable
DROP TABLE `Classroom`;

-- DropTable
DROP TABLE `Country`;

-- DropTable
DROP TABLE `Course`;

-- DropTable
DROP TABLE `CourseDisciplines`;

-- DropTable
DROP TABLE `Discipline`;

-- DropTable
DROP TABLE `Office`;

-- DropTable
DROP TABLE `Province`;

-- DropTable
DROP TABLE `RegistrationPrice`;

-- DropTable
DROP TABLE `SchoolYear`;

-- DropTable
DROP TABLE `Student`;

-- CreateTable
CREATE TABLE `country` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `country_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `province` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `countryId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `office` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `office_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `student` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `bi` VARCHAR(191) NOT NULL,
    `birthDay` DATETIME(3) NULL,
    `civilState` VARCHAR(191) NULL,
    `gender` VARCHAR(191) NULL,
    `address` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `phone1` VARCHAR(191) NOT NULL,
    `phone2` VARCHAR(191) NULL,
    `countryId` INTEGER NOT NULL,
    `statusId` INTEGER NOT NULL,
    `provinceId` INTEGER NOT NULL,

    UNIQUE INDEX `student_bi_key`(`bi`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `employee` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,

    UNIQUE INDEX `employee_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `class` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `class_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classdisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `disciplineId` INTEGER NOT NULL,
    `classId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `discipline` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,

    UNIQUE INDEX `discipline_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `course` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,

    UNIQUE INDEX `course_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `coursedisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `courseId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `schoolyear` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `year` INTEGER NOT NULL,
    `description` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `schoolyear_year_key`(`year`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registrationprice` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `registrationPrice` DECIMAL(65, 30) NOT NULL,
    `reregistrationPrice` DECIMAL(65, 30) NOT NULL,
    `monthPrice` DECIMAL(65, 30) NOT NULL,
    `courseId` INTEGER NOT NULL,
    `classId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classteam` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `period` VARCHAR(191) NOT NULL,
    `schoolYearId` INTEGER NOT NULL,
    `courseId` INTEGER NOT NULL,
    `classId` INTEGER NOT NULL,
    `classroomId` INTEGER NOT NULL,
    `statusId` INTEGER NULL,

    UNIQUE INDEX `classteam_classroomId_period_key`(`classroomId`, `period`),
    UNIQUE INDEX `classteam_name_schoolYearId_classId_key`(`name`, `schoolYearId`, `classId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classteamteacher` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `teacherId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,
    `classTeamId` INTEGER NOT NULL,

    UNIQUE INDEX `classteamteacher_teacherId_disciplineId_classTeamId_key`(`teacherId`, `disciplineId`, `classTeamId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classteamdisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `classTeamId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `province` ADD CONSTRAINT `province_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `province`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_officeId_fkey` FOREIGN KEY (`officeId`) REFERENCES `office`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `province`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classdisciplines` ADD CONSTRAINT `classdisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classdisciplines` ADD CONSTRAINT `classdisciplines_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `coursedisciplines` ADD CONSTRAINT `coursedisciplines_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `coursedisciplines` ADD CONSTRAINT `coursedisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teacherDisciplines` ADD CONSTRAINT `teacherDisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registrationprice` ADD CONSTRAINT `registrationprice_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registrationprice` ADD CONSTRAINT `registrationprice_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_schoolYearId_fkey` FOREIGN KEY (`schoolYearId`) REFERENCES `schoolyear`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_classroomId_fkey` FOREIGN KEY (`classroomId`) REFERENCES `employee`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamteacher` ADD CONSTRAINT `classteamteacher_teacherId_fkey` FOREIGN KEY (`teacherId`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamteacher` ADD CONSTRAINT `classteamteacher_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamteacher` ADD CONSTRAINT `classteamteacher_classTeamId_fkey` FOREIGN KEY (`classTeamId`) REFERENCES `classteam`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamdisciplines` ADD CONSTRAINT `classteamdisciplines_classTeamId_fkey` FOREIGN KEY (`classTeamId`) REFERENCES `classteam`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamdisciplines` ADD CONSTRAINT `classteamdisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
