import * as productsRepository from "./products.repository";

export async function listAll() {
  return productsRepository.findAll();
}
