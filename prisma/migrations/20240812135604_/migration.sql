/*
  Warnings:

  - You are about to alter the column `value` on the `setting` table. The data in that column could be lost. The data in that column will be cast from `LongBlob` to `LongText`.

*/
-- AlterTable
ALTER TABLE `setting` MODIFY `value` LONGTEXT NOT NULL;
