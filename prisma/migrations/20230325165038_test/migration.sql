-- DropIndex
DROP INDEX `ClassDisciplines_classId_fkey` ON `classdisciplines`;

-- DropIndex
DROP INDEX `ClassDisciplines_disciplineId_fkey` ON `classdisciplines`;

-- DropIndex
DROP INDEX `CourseDisciplines_courseId_fkey` ON `coursedisciplines`;

-- DropIndex
DROP INDEX `CourseDisciplines_disciplineId_fkey` ON `coursedisciplines`;

-- DropIndex
DROP INDEX `employees_countryId_fkey` ON `employees`;

-- DropIndex
DROP INDEX `employees_officeId_fkey` ON `employees`;

-- DropIndex
DROP INDEX `employees_provinceId_fkey` ON `employees`;

-- DropIndex
DROP INDEX `employees_statusId_fkey` ON `employees`;

-- DropIndex
DROP INDEX `Province_countryId_fkey` ON `province`;

-- DropIndex
DROP INDEX `teacherDisciplines_disciplineId_fkey` ON `teacherdisciplines`;

-- DropIndex
DROP INDEX `teacherDisciplines_teacherId_fkey` ON `teacherdisciplines`;

-- DropIndex
DROP INDEX `teachers_statusId_fkey` ON `teachers`;

-- DropIndex
DROP INDEX `users_employeeId_fkey` ON `users`;

-- DropIndex
DROP INDEX `users_statusId_fkey` ON `users`;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Province` ADD CONSTRAINT `Province_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `Country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `Country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_officeId_fkey` FOREIGN KEY (`officeId`) REFERENCES `Office`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `Province`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ClassDisciplines` ADD CONSTRAINT `ClassDisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `Discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ClassDisciplines` ADD CONSTRAINT `ClassDisciplines_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `Class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CourseDisciplines` ADD CONSTRAINT `CourseDisciplines_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `Course`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `CourseDisciplines` ADD CONSTRAINT `CourseDisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `Discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teachers` ADD CONSTRAINT `teachers_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teachers` ADD CONSTRAINT `teachers_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teacherDisciplines` ADD CONSTRAINT `teacherDisciplines_teacherId_fkey` FOREIGN KEY (`teacherId`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teacherDisciplines` ADD CONSTRAINT `teacherDisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `Discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
