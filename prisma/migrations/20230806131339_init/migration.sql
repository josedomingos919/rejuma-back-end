/*
  Warnings:

  - You are about to drop the `ProductSale` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `cardPrice` to the `registration` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `ProductSale` DROP FOREIGN KEY `ProductSale_productId_fkey`;

-- DropForeignKey
ALTER TABLE `ProductSale` DROP FOREIGN KEY `ProductSale_registrationId_fkey`;

-- AlterTable
ALTER TABLE `registration` ADD COLUMN `cardPrice` DOUBLE NOT NULL;

-- DropTable
DROP TABLE `ProductSale`;

-- CreateTable
CREATE TABLE `productSale` (
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
ALTER TABLE `productSale` ADD CONSTRAINT `productSale_registrationId_fkey` FOREIGN KEY (`registrationId`) REFERENCES `registration`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `productSale` ADD CONSTRAINT `productSale_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `product`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
