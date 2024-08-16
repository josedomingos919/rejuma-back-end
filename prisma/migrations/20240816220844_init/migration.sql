/*
  Warnings:

  - You are about to drop the column `paymentId` on the `paymentmethods` table. All the data in the column will be lost.
  - Added the required column `invoiceId` to the `PaymentMethods` table without a default value. This is not possible if the table is not empty.
  - Made the column `date` on table `paymentmethods` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `paymentmethods` DROP FOREIGN KEY `PaymentMethods_bankAccountId_fkey`;

-- DropForeignKey
ALTER TABLE `paymentmethods` DROP FOREIGN KEY `PaymentMethods_paymentId_fkey`;

-- AlterTable
ALTER TABLE `paymentmethods` DROP COLUMN `paymentId`,
    ADD COLUMN `invoiceId` INTEGER NOT NULL,
    MODIFY `date` DATETIME(3) NOT NULL,
    MODIFY `bankAccountId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `PaymentMethods` ADD CONSTRAINT `PaymentMethods_invoiceId_fkey` FOREIGN KEY (`invoiceId`) REFERENCES `invoice`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PaymentMethods` ADD CONSTRAINT `PaymentMethods_bankAccountId_fkey` FOREIGN KEY (`bankAccountId`) REFERENCES `BankAccount`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
