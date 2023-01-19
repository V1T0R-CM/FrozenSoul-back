-- CreateTable
CREATE TABLE "Features" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "def" INTEGER NOT NULL,
    "des" INTEGER NOT NULL,

    CONSTRAINT "Features_pkey" PRIMARY KEY ("id")
);
