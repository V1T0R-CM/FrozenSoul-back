-- CreateTable
CREATE TABLE "CharacterLanguages" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "characterId" INTEGER NOT NULL,
    "languagesId" INTEGER NOT NULL,

    CONSTRAINT "CharacterLanguages_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "CharacterLanguages" ADD CONSTRAINT "CharacterLanguages_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CharacterLanguages" ADD CONSTRAINT "CharacterLanguages_languagesId_fkey" FOREIGN KEY ("languagesId") REFERENCES "Languages"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
