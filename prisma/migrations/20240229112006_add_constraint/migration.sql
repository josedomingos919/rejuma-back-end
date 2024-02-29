/*
  Warnings:

  - A unique constraint covering the columns `[startTime,endTime,classTeamId,weekDaysId]` on the table `schedule` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `schedule_startTime_endTime_classTeamId_weekDaysId_key` ON `schedule`(`startTime`, `endTime`, `classTeamId`, `weekDaysId`);
