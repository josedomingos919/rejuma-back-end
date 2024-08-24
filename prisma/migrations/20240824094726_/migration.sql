-- AlterTable
ALTER TABLE `student` ADD COLUMN `studentSupervisorId` INTEGER NULL;

-- CreateTable
CREATE TABLE `studentsupervisor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `bi` VARCHAR(191) NULL,
    `degree` VARCHAR(191) NULL,
    `phone1` VARCHAR(191) NULL,
    `phone2` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DiscountsInUse` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `studentId` INTEGER NULL,
    `studentSupervisorId` INTEGER NULL,
    `paymentDiscountId` INTEGER NOT NULL,
    `statusId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `PaymentDiscount` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `value` DOUBLE NULL,
    `percentage` INTEGER NULL,
    `discountType` VARCHAR(191) NOT NULL,
    `paymentType` VARCHAR(191) NOT NULL,
    `statusId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `invoiceDiscounts` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `paymentId` INTEGER NOT NULL,
    `paymentDiscountId` INTEGER NOT NULL,
    `discountName` VARCHAR(191) NOT NULL,
    `discountType` VARCHAR(191) NOT NULL,
    `percentage` DOUBLE NULL,
    `value` DOUBLE NULL,
    `total` DOUBLE NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `DiscountsInUse` ADD CONSTRAINT `DiscountsInUse_studentId_fkey` FOREIGN KEY (`studentId`) REFERENCES `student`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DiscountsInUse` ADD CONSTRAINT `DiscountsInUse_studentSupervisorId_fkey` FOREIGN KEY (`studentSupervisorId`) REFERENCES `studentsupervisor`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DiscountsInUse` ADD CONSTRAINT `DiscountsInUse_paymentDiscountId_fkey` FOREIGN KEY (`paymentDiscountId`) REFERENCES `PaymentDiscount`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DiscountsInUse` ADD CONSTRAINT `DiscountsInUse_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `PaymentDiscount` ADD CONSTRAINT `PaymentDiscount_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `student` ADD CONSTRAINT `student_studentSupervisorId_fkey` FOREIGN KEY (`studentSupervisorId`) REFERENCES `studentsupervisor`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `invoiceDiscounts` ADD CONSTRAINT `invoiceDiscounts_paymentId_fkey` FOREIGN KEY (`paymentId`) REFERENCES `payment`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `invoiceDiscounts` ADD CONSTRAINT `invoiceDiscounts_paymentDiscountId_fkey` FOREIGN KEY (`paymentDiscountId`) REFERENCES `PaymentDiscount`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
