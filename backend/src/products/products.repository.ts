import { pool } from "../db";

export async function findAll() {
  const result = await pool.query(`
    SELECT
      p.id,
      p.name,
      p.description,
      p.price,
      p.image_url,
      p.stock,
      p.created_at,
      c.name AS category_name
    FROM products p
    JOIN categories c ON p.category_id = c.id
    ORDER BY p.created_at DESC
  `);
  return result.rows;
}
