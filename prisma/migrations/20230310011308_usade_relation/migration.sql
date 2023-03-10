/*
  Warnings:

  - Added the required column `employeeId` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `users` ADD COLUMN `employeeId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
