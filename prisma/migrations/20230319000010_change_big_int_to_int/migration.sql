/*
  Warnings:

  - You are about to alter the column `year` on the `schoolyear` table. The data in that column could be lost. The data in that column will be cast from `BigInt` to `Int`.

*/
-- AlterTable
ALTER TABLE `schoolyear` MODIFY `year` INTEGER NOT NULL;
