SET FOREIGN_KEY_CHECKS = 0; -- 비활성화
TRUNCATE TABLE products;
TRUNCATE TABLE customers;
TRUNCATE TABLE orders;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO customers (email, password, address)
VALUES ('noname@example', 'password123', '서울시 마포구');


INSERT INTO customers (name, email, password, address)
VALUES ('강감찬', 'kang@example', 'password789', '서울시 강남구');

SELECT * FROM customers;

INSERT INTO customers (name, email, password, address)
VALUES ('홍길동', 'kang@example', 'new_password_123', '서울시 송파구');

INSERT INTO products (name, price, stock_quantity)
VALUES ('베이직 반팔 티셔츠', '19900', '200');

SELECT * FROM products;

INSERT INTO orders(customer_id, product_id, quantity)
VAlUES (999, 1, 1);

SELECT * FROM orders;

DELETE FROM orders
WHERE product_id = 1;