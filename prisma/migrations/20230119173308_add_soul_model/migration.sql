-- CreateTable
CREATE TABLE "Soul" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "name" TEXT NOT NULL,
    "developmentId" INTEGER NOT NULL,

    CONSTRAINT "Soul_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Soul" ADD CONSTRAINT "Soul_developmentId_fkey" FOREIGN KEY ("developmentId") REFERENCES "Development"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
