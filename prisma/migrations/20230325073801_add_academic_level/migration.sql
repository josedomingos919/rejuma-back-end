/*
  Warnings:

  - Added the required column `academicLevel` to the `teachers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `teachers` ADD COLUMN `academicLevel` VARCHAR(191) NOT NULL;
