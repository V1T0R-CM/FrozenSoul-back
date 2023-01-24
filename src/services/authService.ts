import * as authRepositories from "../repositories/authRepositories";
import * as errorUtils from "../utils/errorUtils";
import { IAccountRegisterData, IAccountLoginData } from "../types/accountTypes";
import { generateToken } from "../utils/token";
import bcrypt from "bcrypt";

export async function registerStoreAccount(accountData: IAccountRegisterData) {
    const user = await authRepositories.getByUser(accountData.user);
    const passwordHash = bcrypt.hashSync(accountData.password, 10);
    if (user) throw errorUtils.conflictError("Usuario já esta cadastrado");

    await authRepositories.insert({ user: accountData.user, password: passwordHash });
}

export async function loginStoreAccount(accountData: IAccountLoginData) {
    const user = await authRepositories.getByUser(accountData.user);

    if (!user) throw errorUtils.unauthorizedError("Credenciais invalidas");
    if (!bcrypt.compareSync(accountData.password, user.password)) throw errorUtils.unauthorizedError("Credenciais invalidas");

    return { token: generateToken(user.id, user.user), }
}