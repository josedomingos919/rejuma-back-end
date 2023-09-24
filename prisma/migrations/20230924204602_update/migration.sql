/*
  Warnings:

  - You are about to drop the column `schoolFine` on the `months` table. All the data in the column will be lost.
  - Added the required column `schoolFine` to the `schoolFees` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `months` DROP COLUMN `schoolFine`;

-- AlterTable
ALTER TABLE `schoolfees` ADD COLUMN `schoolFine` VARCHAR(191) NOT NULL;
