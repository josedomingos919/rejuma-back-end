-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `access` VARCHAR(191) NOT NULL,
    `employeeId` INTEGER NOT NULL,
    `statusId` INTEGER NULL,

    UNIQUE INDEX `users_phone_key`(`phone`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `country` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `country_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `province` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `countryId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `office` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `office_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `student` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `bi` VARCHAR(191) NOT NULL,
    `birthDay` DATETIME(3) NULL,
    `civilState` VARCHAR(191) NULL,
    `gender` VARCHAR(191) NULL,
    `address` VARCHAR(191) NULL,
    `email` VARCHAR(191) NULL,
    `phone1` VARCHAR(191) NOT NULL,
    `phone2` VARCHAR(191) NULL,
    `countryId` INTEGER NOT NULL,
    `statusId` INTEGER NOT NULL,
    `provinceId` INTEGER NOT NULL,
    `parentAffiliation` VARCHAR(191) NULL,
    `maternalAffiliation` VARCHAR(191) NULL,
    `residence` VARCHAR(191) NULL,
    `municipality` VARCHAR(191) NULL,
    `natural` VARCHAR(191) NULL,
    `emitOn` VARCHAR(191) NULL,
    `validUntil` VARCHAR(191) NULL,
    `isWorking` VARCHAR(191) NULL,
    `work` VARCHAR(191) NULL,
    `workStation` VARCHAR(191) NULL,
    `sponsorOfEducation` VARCHAR(191) NULL,

    UNIQUE INDEX `student_bi_key`(`bi`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `employees` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `bi` VARCHAR(191) NOT NULL,
    `birthDay` DATETIME(3) NULL,
    `civilState` VARCHAR(191) NULL,
    `gender` VARCHAR(191) NULL,
    `address` VARCHAR(191) NULL,
    `salaryType` VARCHAR(191) NOT NULL,
    `salary` DECIMAL(65, 30) NOT NULL,
    `email` VARCHAR(191) NULL,
    `phone1` VARCHAR(191) NOT NULL,
    `phone2` VARCHAR(191) NULL,
    `countryId` INTEGER NOT NULL,
    `statusId` INTEGER NOT NULL,
    `officeId` INTEGER NOT NULL,
    `provinceId` INTEGER NOT NULL,

    UNIQUE INDEX `employees_bi_key`(`bi`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classroom` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `studentNumber` INTEGER NULL,

    UNIQUE INDEX `classroom_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `status` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `show` BOOLEAN NOT NULL DEFAULT true,

    UNIQUE INDEX `status_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `class` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `class_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classdisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `disciplineId` INTEGER NOT NULL,
    `classId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `discipline` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,

    UNIQUE INDEX `discipline_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `course` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,

    UNIQUE INDEX `course_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `coursedisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `courseId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `schoolyear` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `year` INTEGER NOT NULL,
    `description` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `schoolyear_year_key`(`year`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `teachers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `employeeId` INTEGER NOT NULL,
    `academicLevel` VARCHAR(191) NOT NULL,
    `statusId` INTEGER NULL,

    UNIQUE INDEX `teachers_employeeId_key`(`employeeId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `teacherdisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `teacherId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registrationprice` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `registrationPrice` DECIMAL(65, 30) NOT NULL,
    `reregistrationPrice` DECIMAL(65, 30) NOT NULL,
    `monthPrice` DECIMAL(65, 30) NOT NULL,
    `courseId` INTEGER NULL,
    `classId` INTEGER NOT NULL,

    UNIQUE INDEX `registrationprice_classId_courseId_key`(`classId`, `courseId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classteam` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `period` VARCHAR(191) NOT NULL,
    `schoolYearId` INTEGER NOT NULL,
    `courseId` INTEGER NULL,
    `classId` INTEGER NOT NULL,
    `classroomId` INTEGER NOT NULL,
    `statusId` INTEGER NULL,

    UNIQUE INDEX `classteam_classroomId_period_key`(`classroomId`, `period`),
    UNIQUE INDEX `classteam_name_schoolYearId_classId_key`(`name`, `schoolYearId`, `classId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classteamteacher` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `teacherId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,
    `classTeamId` INTEGER NOT NULL,

    UNIQUE INDEX `classteamteacher_teacherId_disciplineId_classTeamId_key`(`teacherId`, `disciplineId`, `classTeamId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `classteamdisciplines` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `classTeamId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `registration` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `price` DECIMAL(65, 30) NOT NULL,
    `classTeamId` INTEGER NOT NULL,
    `courseId` INTEGER NULL,
    `classId` INTEGER NOT NULL,
    `schoolYearId` INTEGER NOT NULL,
    `statusId` INTEGER NOT NULL,
    `studentId` INTEGER NOT NULL,

    UNIQUE INDEX `registration_studentId_classTeamId_key`(`studentId`, `classTeamId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `price` DECIMAL(65, 30) NULL,
    `code` VARCHAR(191) NOT NULL,
    `quantity` INTEGER NOT NULL DEFAULT 0,
    `useQuantity` VARCHAR(191) NOT NULL DEFAULT 'Sim',

    UNIQUE INDEX `product_code_key`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ProductSale` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `registrationId` INTEGER NULL,
    `productId` INTEGER NULL,
    `quantity` INTEGER NOT NULL DEFAULT 1,
    `price` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `province` ADD CONSTRAINT `province_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `province`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_officeId_fkey` FOREIGN KEY (`officeId`) REFERENCES `office`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `employees` ADD CONSTRAINT `employees_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `province`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classdisciplines` ADD CONSTRAINT `classdisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classdisciplines` ADD CONSTRAINT `classdisciplines_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `coursedisciplines` ADD CONSTRAINT `coursedisciplines_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `coursedisciplines` ADD CONSTRAINT `coursedisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teachers` ADD CONSTRAINT `teachers_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teachers` ADD CONSTRAINT `teachers_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teacherdisciplines` ADD CONSTRAINT `teacherdisciplines_teacherId_fkey` FOREIGN KEY (`teacherId`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `teacherdisciplines` ADD CONSTRAINT `teacherdisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registrationprice` ADD CONSTRAINT `registrationprice_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registrationprice` ADD CONSTRAINT `registrationprice_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_schoolYearId_fkey` FOREIGN KEY (`schoolYearId`) REFERENCES `schoolyear`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_classroomId_fkey` FOREIGN KEY (`classroomId`) REFERENCES `classroom`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteam` ADD CONSTRAINT `classteam_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamteacher` ADD CONSTRAINT `classteamteacher_teacherId_fkey` FOREIGN KEY (`teacherId`) REFERENCES `teachers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamteacher` ADD CONSTRAINT `classteamteacher_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamteacher` ADD CONSTRAINT `classteamteacher_classTeamId_fkey` FOREIGN KEY (`classTeamId`) REFERENCES `classteam`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamdisciplines` ADD CONSTRAINT `classteamdisciplines_classTeamId_fkey` FOREIGN KEY (`classTeamId`) REFERENCES `classteam`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `classteamdisciplines` ADD CONSTRAINT `classteamdisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registration` ADD CONSTRAINT `registration_classTeamId_fkey` FOREIGN KEY (`classTeamId`) REFERENCES `classteam`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registration` ADD CONSTRAINT `registration_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registration` ADD CONSTRAINT `registration_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registration` ADD CONSTRAINT `registration_schoolYearId_fkey` FOREIGN KEY (`schoolYearId`) REFERENCES `schoolyear`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registration` ADD CONSTRAINT `registration_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `registration` ADD CONSTRAINT `registration_studentId_fkey` FOREIGN KEY (`studentId`) REFERENCES `student`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProductSale` ADD CONSTRAINT `ProductSale_registrationId_fkey` FOREIGN KEY (`registrationId`) REFERENCES `registration`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ProductSale` ADD CONSTRAINT `ProductSale_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `product`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
