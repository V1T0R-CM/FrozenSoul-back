-- CreateTable
CREATE TABLE "Grimoire" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "characterId" INTEGER NOT NULL,
    "abilityId" INTEGER NOT NULL,

    CONSTRAINT "Grimoire_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Grimoire" ADD CONSTRAINT "Grimoire_characterId_fkey" FOREIGN KEY ("characterId") REFERENCES "Character"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Grimoire" ADD CONSTRAINT "Grimoire_abilityId_fkey" FOREIGN KEY ("abilityId") REFERENCES "Ability"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
