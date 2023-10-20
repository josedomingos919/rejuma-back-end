/*
  Warnings:

  - You are about to drop the column `invoiceId` on the `employees` table. All the data in the column will be lost.
  - Added the required column `employeeId` to the `invoice` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `employees_invoiceId_fkey`;

-- AlterTable
ALTER TABLE `employees` DROP COLUMN `invoiceId`;

-- AlterTable
ALTER TABLE `invoice` ADD COLUMN `employeeId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `invoice` ADD CONSTRAINT `invoice_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
