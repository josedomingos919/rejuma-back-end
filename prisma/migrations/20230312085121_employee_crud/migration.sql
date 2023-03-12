/*
  Warnings:

  - A unique constraint covering the columns `[bi]` on the table `employees` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[code]` on the table `status` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `bi` to the `employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `officeId` to the `employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone1` to the `employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone2` to the `employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `provinceId` to the `employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `salary` to the `employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `statusId` to the `employees` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `employees` ADD COLUMN `address` VARCHAR(191) NULL,
    ADD COLUMN `bi` VARCHAR(191) NOT NULL,
    ADD COLUMN `birthDay` DATETIME(3) NULL,
    ADD COLUMN `civilState` VARCHAR(191) NULL,
    ADD COLUMN `gender` VARCHAR(191) NULL,
    ADD COLUMN `name` VARCHAR(191) NOT NULL,
    ADD COLUMN `officeId` INTEGER NOT NULL,
    ADD COLUMN `phone1` VARCHAR(191) NOT NULL,
    ADD COLUMN `phone2` VARCHAR(191) NOT NULL,
    ADD COLUMN `provinceId` INTEGER NOT NULL,
    ADD COLUMN `salary` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `salaryType` VARCHAR(191) NULL,
    ADD COLUMN `statusId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `users` ADD COLUMN `statusId` INTEGER NULL;

-- CreateTable
CREATE TABLE `Country` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Country_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Province` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `countryId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Office` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Office_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `employees_bi_key` ON `employees`(`bi`);

-- CreateIndex
CREATE UNIQUE INDEX `status_code_key` ON `status`(`code`);

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Province` ADD CONSTRAINT `Province_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `Country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_officeId_fkey` FOREIGN KEY (`officeId`) REFERENCES `Office`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `Province`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
