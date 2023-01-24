import { prisma } from "../database";
import { IAccountRegisterData } from "../types/accountTypes";

export async function getById(id: number) {
    const result = await prisma.account.findUnique({ where: { id: id } });
    return result
}

export async function getByUser(user: string) {
    const result = await prisma.account.findUnique({ where: { user: user } });
    return result
}

export async function insert(storeData: IAccountRegisterData) {
    await prisma.account.create({ data: storeData })
}