/*
  Warnings:

  - You are about to alter the column `salary` on the `employees` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.
  - You are about to alter the column `price` on the `product` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.
  - You are about to alter the column `price` on the `registration` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.
  - You are about to alter the column `registrationPrice` on the `registrationprice` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.
  - You are about to alter the column `reregistrationPrice` on the `registrationprice` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.
  - You are about to alter the column `monthPrice` on the `registrationprice` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Double`.

*/
-- AlterTable
ALTER TABLE `employees` MODIFY `salary` DOUBLE NOT NULL;

-- AlterTable
ALTER TABLE `product` MODIFY `price` DOUBLE NULL;

-- AlterTable
ALTER TABLE `registration` MODIFY `price` DOUBLE NOT NULL;

-- AlterTable
ALTER TABLE `registrationprice` MODIFY `registrationPrice` DOUBLE NOT NULL,
    MODIFY `reregistrationPrice` DOUBLE NOT NULL,
    MODIFY `monthPrice` DOUBLE NOT NULL;
