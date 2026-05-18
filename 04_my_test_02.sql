CREATE TABLE products (
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
product_code VARCHAR(20) UNIQUE,
price INT NOT NULL,
stock_count INT NOT NULL DEFAULT 0
);

DESC products;

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
    );
    
    INSERT INTO customers(name) VALUES('홍길동');
    SELECT * FROM CUSTOMERS;
    
    INSERT INTO orders (customer_id) VALUES (1);
    
    INSERT INTO orders(customer_id) VALUES (999);
    INSERT INTO customers (customer_id) VALUES (2);
    
    USE my_shop;