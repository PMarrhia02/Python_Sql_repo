create database Exception;
use exception;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);
select * from employees;
INSERT IGNORE INTO employees (id, name, salary) VALUES (1, 'John Doe', 50000);
REPLACE INTO employees (id, name, salary) VALUES (1, 'John Doe', 60000);
INSERT INTO employees (id, name, salary) 
VALUES (1, 'John Doe', 50000)
ON DUPLICATE KEY UPDATE salary = 60000;

show warnings;
DELETE FROM employees WHERE id = 100;
UPDATE employees SET salary = 55000 WHERE id = 100;





