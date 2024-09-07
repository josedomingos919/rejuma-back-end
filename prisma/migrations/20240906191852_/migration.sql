/*
  Warnings:

  - You are about to alter the column `previousNumber` on the `registration` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `registration` MODIFY `previousNumber` INTEGER NULL;

-- CreateTable
CREATE TABLE `medicalRecord` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `allergiesSpecific` BOOLEAN NOT NULL DEFAULT false,
    `allergiesDetails` VARCHAR(191) NULL,
    `cognitiveDisorder` BOOLEAN NOT NULL DEFAULT false,
    `asthma` BOOLEAN NOT NULL DEFAULT false,
    `epilepsy` BOOLEAN NOT NULL DEFAULT false,
    `convulsion` BOOLEAN NOT NULL DEFAULT false,
    `visualImpairment` BOOLEAN NOT NULL DEFAULT false,
    `specialNeeds` BOOLEAN NOT NULL DEFAULT false,
    `hemophilia` BOOLEAN NOT NULL DEFAULT false,
    `hearingImpairment` BOOLEAN NOT NULL DEFAULT false,
    `medicalTreatment` BOOLEAN NOT NULL DEFAULT false,
    `treatmentDetails` VARCHAR(191) NULL,
    `hospitalName` VARCHAR(191) NULL,
    `hospitalAddress` VARCHAR(191) NULL,
    `registrationId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `medicalRecord` ADD CONSTRAINT `medicalRecord_registrationId_fkey` FOREIGN KEY (`registrationId`) REFERENCES `registration`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
