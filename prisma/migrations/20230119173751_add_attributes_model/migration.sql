-- CreateTable
CREATE TABLE "Attributes" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "itl" INTEGER NOT NULL,
    "cui" INTEGER NOT NULL,
    "int" INTEGER NOT NULL,
    "car" INTEGER NOT NULL,
    "agi" INTEGER NOT NULL,
    "con" INTEGER NOT NULL,
    "for" INTEGER NOT NULL,

    CONSTRAINT "Attributes_pkey" PRIMARY KEY ("id")
);
