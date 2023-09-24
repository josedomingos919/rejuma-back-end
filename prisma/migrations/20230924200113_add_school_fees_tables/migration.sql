-- CreateTable
CREATE TABLE `months` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `number` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `payment` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `value` DOUBLE NOT NULL,
    `employeeId` INTEGER NOT NULL,
    `statusId` INTEGER NOT NULL,
    `registrationId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `schoolFees` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `paymentId` INTEGER NOT NULL,
    `monthsId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `exam` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `paymentId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `schoolResource` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `paymentId` INTEGER NOT NULL,
    `disciplineId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `payment` ADD CONSTRAINT `payment_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `payment` ADD CONSTRAINT `payment_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `payment` ADD CONSTRAINT `payment_registrationId_fkey` FOREIGN KEY (`registrationId`) REFERENCES `registration`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `schoolFees` ADD CONSTRAINT `schoolFees_paymentId_fkey` FOREIGN KEY (`paymentId`) REFERENCES `payment`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `schoolFees` ADD CONSTRAINT `schoolFees_monthsId_fkey` FOREIGN KEY (`monthsId`) REFERENCES `months`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `exam` ADD CONSTRAINT `exam_paymentId_fkey` FOREIGN KEY (`paymentId`) REFERENCES `payment`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `exam` ADD CONSTRAINT `exam_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `schoolResource` ADD CONSTRAINT `schoolResource_paymentId_fkey` FOREIGN KEY (`paymentId`) REFERENCES `payment`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `schoolResource` ADD CONSTRAINT `schoolResource_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
