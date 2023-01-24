/*
  Warnings:

  - You are about to drop the column `name` on the `Soul` table. All the data in the column will be lost.
  - Added the required column `soulTypeId` to the `Soul` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Soul" DROP COLUMN "name",
ADD COLUMN     "soulTypeId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "SoulType" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "name" TEXT NOT NULL,

    CONSTRAINT "SoulType_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Soul" ADD CONSTRAINT "Soul_soulTypeId_fkey" FOREIGN KEY ("soulTypeId") REFERENCES "SoulType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
