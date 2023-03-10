/*
  Warnings:

  - You are about to drop the column `acesso` on the `user` table. All the data in the column will be lost.
  - Added the required column `access` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `acesso`,
    ADD COLUMN `access` VARCHAR(191) NOT NULL;
