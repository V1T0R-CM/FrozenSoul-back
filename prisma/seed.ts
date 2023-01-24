import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
    await prisma.soulType.createMany({
        data: [
            { name: "Sombras" }, { name: "Luz" }, { name: "Água" }, { name: "Fogo" }, { name: "Terra" }, { name: "Raio" }, { name: "Gelo" }
        ]
    });

    await prisma.itemCategory.createMany({
        data: [
            { name: "Acessórios" }, { name: "Armamento" }, { name: "Armazenamento" }, { name: "Equipamento" }, { name: "Utensílios" }
        ]
    });
}


main().catch((e) => {
    console.error(e);
    process.exit(1);
})
    .finally(async () => {
        await prisma.$disconnect();
    });