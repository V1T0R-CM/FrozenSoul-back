import { Request, Response, NextFunction } from "express";
import * as authSchemas from "../schemas/authSchemas";

export function registerValidation(req: Request, res: Response, next: NextFunction) {
    const validation = authSchemas.registerSchema.validate(req.body);

    if (validation.error) throw { code: "wrong_schema", message: validation.error.message };

    next();
}

export function loginValidation(req: Request, res: Response, next: NextFunction) {
    const validation = authSchemas.loginSchema.validate(req.body);

    if (validation.error) throw { code: "wrong_schema", message: validation.error.message };

    next();
}