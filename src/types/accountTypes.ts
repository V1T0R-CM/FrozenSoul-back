import { Account } from "@prisma/client";

export type IAccountRegisterData = Omit<Account, "id" | "createdAt"> & { confirmPassword?: string }
export type IAccountLoginData = Omit<Account, "id" | "createdAt">