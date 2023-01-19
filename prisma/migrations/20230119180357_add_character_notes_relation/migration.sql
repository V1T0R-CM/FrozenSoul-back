/*
  Warnings:

  - Added the required column `notesId` to the `Character` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Character" ADD COLUMN     "notesId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Character" ADD CONSTRAINT "Character_notesId_fkey" FOREIGN KEY ("notesId") REFERENCES "Notes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
