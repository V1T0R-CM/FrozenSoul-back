-- CreateTable
CREATE TABLE "Development" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "conhecimento" INTEGER NOT NULL,
    "fisico" INTEGER NOT NULL,
    "fisicoMagico" INTEGER NOT NULL,
    "magico" INTEGER NOT NULL,
    "transfusao" INTEGER NOT NULL,
    "estudo" INTEGER NOT NULL,
    "materializacao" INTEGER NOT NULL,
    "reserva" INTEGER NOT NULL,

    CONSTRAINT "Development_pkey" PRIMARY KEY ("id")
);
