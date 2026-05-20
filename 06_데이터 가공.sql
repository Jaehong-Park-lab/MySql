-- 산술 연산
SELECT name, price, stock_quantity FROM products;

SELECT name, price, stock_quantity, price * stock_quantity FROM products;

SELECT 
	name,
    price,
    stock_quantity,
    price * stock_quantity AS total_stock_value
FROM products; 

SELECT 
	name,
    price,
    price + 3000 AS expected_price
FROM products; 

SELECT 
	name,
    price,
    price - 1000 AS discounted_price
FROM products; 

SELECT 
	name,
    price,
    price / 10 AS monthly_payment
FROM products; 

-- 문자열 함수
SELECT name, email FROM customers;

SELECT concat(name, email) FROM customers;
SELECT concat(name, ' - ', email) FROM customers;
SELECT concat(name, ' ( ', email, ')' ) AS name_and_email FROM customers;

SELECT concat(' - ', name, email, address) AS customer_details FROM customers;

SELECT concat_ws(' - ', name, email, address) AS customer_details FROM customers;

SELECT email, UPPER(email) AS upper_email FROM customers;

SELECT name, char_length(name) AS char_length FROM customers;

SELECT name, char_length(name) AS char_length, length(name) AS byte_length FROM customers;

-- NULL 함수
SELECT name, description FROM products;

SELECT 
	name, 
    IFNULL(description, '상품 설명 없음') AS description
FROM
	products;
    
SELECT 
	name, 
    COALESCE(description, '상품 설명 없음') AS description
FROM
	products;
    
-- 문제와 풀이
SELECT
	name,
    price,
    price * (1 - 0.15) AS sale_price
FROM
	products;
    
SELECT
	 concat_ws(' - ', name, address) AS customer_info
FROM
	customers;

SELECT
	name,
    description,
    coalesce(description, name) AS product_display_info
FROM
	products;
    
SELECT
	name,
    description,
    coalesce(description, name, '정보 없음') AS display_text
FROM
	products;
    
SELECT
	email,
    substring_index(email, '@', 1) AS user_id,
    char_length (substring_index(email, '@', 1) ) AS id_length
FROM customers;