/*
  Warnings:

  - Added the required column `attributesId` to the `Character` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Character" ADD COLUMN     "attributesId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Character" ADD CONSTRAINT "Character_attributesId_fkey" FOREIGN KEY ("attributesId") REFERENCES "Attributes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
