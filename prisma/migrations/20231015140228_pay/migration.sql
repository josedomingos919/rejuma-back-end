/*
  Warnings:

  - Added the required column `invoiceId` to the `payment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `employees` ADD COLUMN `invoiceId` INTEGER NULL;

-- AlterTable
ALTER TABLE `payment` ADD COLUMN `invoiceId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_invoiceId_fkey` FOREIGN KEY (`invoiceId`) REFERENCES `invoice`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `payment` ADD CONSTRAINT `payment_invoiceId_fkey` FOREIGN KEY (`invoiceId`) REFERENCES `invoice`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
