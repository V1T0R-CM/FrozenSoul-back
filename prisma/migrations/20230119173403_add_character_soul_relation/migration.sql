/*
  Warnings:

  - Added the required column `soulId` to the `Character` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Character" ADD COLUMN     "soulId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Character" ADD CONSTRAINT "Character_soulId_fkey" FOREIGN KEY ("soulId") REFERENCES "Soul"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
