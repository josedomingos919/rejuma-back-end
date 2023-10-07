-- DropIndex
DROP INDEX `student_bi_key` ON `student`;

-- AlterTable
ALTER TABLE `student` MODIFY `bi` VARCHAR(191) NULL;
