import { Request, Response } from 'express';
import { registerStoreAccount, loginStoreAccount } from '../services/authServices';

export async function signUp(req: Request, res: Response) {
    await registerStoreAccount(req.body);
    res.sendStatus(201);
}

export async function signIn(req: Request, res: Response) {
    const result = await loginStoreAccount(req.body)
    res.status(200).send(result)
}