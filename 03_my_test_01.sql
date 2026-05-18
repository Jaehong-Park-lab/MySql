CREATE DATABASE my_test;

USE my_test;

CREATE TABLE members (
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    join_date DATE
    );
    
    DESC members;
    
INSERT INTO members (id, name, join_date)
VALUES (1, '션', '2025-01-10');

SELECT * FROM members;



UPDATE members
SET NAME = '네이트2'
WHERE id = 2;

DELETE FROM members
WHERE id = 1;
