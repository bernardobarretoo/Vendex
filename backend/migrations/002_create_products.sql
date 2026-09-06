CREATE TABLE products (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(200)   NOT NULL,
    description TEXT,
    price       NUMERIC(10,2)  NOT NULL CHECK (price >= 0),
    image_url   VARCHAR(300),
    stock       INTEGER        NOT NULL DEFAULT 0 CHECK (stock >= 0),
    category_id INTEGER        NOT NULL REFERENCES categories(id),
    created_at  TIMESTAMP      NOT NULL DEFAULT NOW()
);
