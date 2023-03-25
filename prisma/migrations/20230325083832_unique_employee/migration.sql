/*
  Warnings:

  - A unique constraint covering the columns `[employeeId]` on the table `teachers` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `teachers_employeeId_key` ON `teachers`(`employeeId`);
