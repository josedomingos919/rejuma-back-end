/*
  Warnings:

  - Added the required column `schoolFine` to the `months` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `months` ADD COLUMN `schoolFine` VARCHAR(191) NOT NULL;
