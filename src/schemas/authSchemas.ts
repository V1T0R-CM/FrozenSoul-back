import Joi from 'joi';
import { IAccountRegisterData, IAccountLoginData } from '../types/accountTypes';

export const registerSchema = Joi.object<IAccountRegisterData>({
    user: Joi.string().email().required(),
    password: Joi.string().min(8).required(),
    confirmPassword: Joi.valid(Joi.ref('password'))
})

export const loginSchema = Joi.object<IAccountLoginData>({
    user: Joi.string().email().required(),
    password: Joi.string().min(8).required(),
})