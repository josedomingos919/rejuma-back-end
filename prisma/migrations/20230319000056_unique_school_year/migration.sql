/*
  Warnings:

  - A unique constraint covering the columns `[year]` on the table `SchoolYear` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `SchoolYear_year_key` ON `SchoolYear`(`year`);
