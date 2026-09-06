import { Request, Response, NextFunction } from "express";
import * as productsService from "./products.service";

export async function getAll(req: Request, res: Response, next: NextFunction) {
  try {
    const products = await productsService.listAll();
    res.json(products);
  } catch (err) {
    next(err);
  }
}
