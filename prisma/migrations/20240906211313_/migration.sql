/*
  Warnings:

  - A unique constraint covering the columns `[bi]` on the table `studentsupervisor` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `statusId` to the `studentsupervisor` table without a default value. This is not possible if the table is not empty.
  - Made the column `bi` on table `studentsupervisor` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `studentsupervisor` ADD COLUMN `statusId` INTEGER NOT NULL,
    MODIFY `bi` VARCHAR(191) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `studentsupervisor_bi_key` ON `studentsupervisor`(`bi`);

-- AddForeignKey
ALTER TABLE `studentsupervisor` ADD CONSTRAINT `studentsupervisor_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
