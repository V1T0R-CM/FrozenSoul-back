/*
  Warnings:

  - Added the required column `eap` to the `Character` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Character" ADD COLUMN     "eap" INTEGER NOT NULL;
