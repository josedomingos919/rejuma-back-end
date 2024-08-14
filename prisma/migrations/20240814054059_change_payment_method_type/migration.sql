/*
  Warnings:

  - You are about to alter the column `repeat` on the `paymentmethod` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `paymentmethod` MODIFY `repeat` INTEGER NOT NULL DEFAULT 0;
