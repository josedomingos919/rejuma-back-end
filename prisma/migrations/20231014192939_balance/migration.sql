/*
  Warnings:

  - Made the column `balance` on table `student` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `student` MODIFY `balance` DOUBLE NOT NULL DEFAULT 0;
