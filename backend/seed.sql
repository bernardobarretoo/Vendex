-- Limpar dados existentes (para poder rodar o seed repetidamente)
TRUNCATE products, categories RESTART IDENTITY CASCADE;

-- Categorias
INSERT INTO categories (name) VALUES
    ('Eletrônicos'),
    ('Moda'),
    ('Casa e Decoração'),
    ('Esporte e Lazer');

-- Produtos da categoria Eletrônicos (id = 1)
INSERT INTO products (name, description, price, image_url, stock, category_id) VALUES
    ('Fone de Ouvido Bluetooth', 'Fone sem fio com cancelamento de ruído', 199.90, 'https://example.com/img/fone.jpg', 50, 1),
    ('Smartwatch X10', 'Relógio inteligente com monitor cardíaco', 349.00, 'https://example.com/img/smartwatch.jpg', 30, 1),
    ('Carregador Portátil 10000mAh', 'Power bank com carregamento rápido', 89.90, 'https://example.com/img/powerbank.jpg', 80, 1);

-- Produtos da categoria Moda (id = 2)
INSERT INTO products (name, description, price, image_url, stock, category_id) VALUES
    ('Camiseta Básica Algodão', 'Camiseta unissex 100% algodão', 39.90, 'https://example.com/img/camiseta.jpg', 120, 2),
    ('Tênis Casual Urbano', 'Tênis confortável para o dia a dia', 179.90, 'https://example.com/img/tenis.jpg', 40, 2);

-- Produtos da categoria Casa e Decoração (id = 3)
INSERT INTO products (name, description, price, image_url, stock, category_id) VALUES
    ('Luminária de Mesa LED', 'Luminária regulável com três tons de luz', 79.90, 'https://example.com/img/luminaria.jpg', 25, 3),
    ('Jogo de Panelas Antiaderente', 'Conjunto com 5 peças', 249.90, 'https://example.com/img/panelas.jpg', 15, 3);

-- Produtos da categoria Esporte e Lazer (id = 4)
INSERT INTO products (name, description, price, image_url, stock, category_id) VALUES
    ('Bola de Futebol Oficial', 'Bola tamanho oficial para campo', 129.90, 'https://example.com/img/bola.jpg', 60, 4),
    ('Tapete de Yoga', 'Tapete antiderrapante 6mm', 69.90, 'https://example.com/img/tapete.jpg', 45, 4);
