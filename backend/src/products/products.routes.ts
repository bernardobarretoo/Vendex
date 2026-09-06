import { Router } from "express";
import * as productsController from "./products.controller";

const router = Router();
router.get("/api/products", productsController.getAll);

export default router;
