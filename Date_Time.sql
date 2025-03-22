CREATE DATABASE companyDB;
USE companyDB;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    joining_date DATETIME,
    birth_date DATE
);
select * from employees;

INSERT INTO employees (name, joining_date, birth_date) VALUES
('Prikshit', '2023-06-01 10:30:00', '1999-08-15'),
('Aman', '2022-07-15 09:00:00', '2000-02-10'),
('Simran', '2021-03-20 14:15:00', '1998-12-05');

-- Date Time Functions

SELECT NOW() AS current_datetime;

SELECT name, YEAR(joining_date), MONTH(joining_date), DAY(joining_date) FROM employees;

SELECT name, Day(birth_date), Month(birth_date), YEAR(birth_date) AS age FROM employees;

SELECT name, joining_date + INTERVAL 2 YEAR AS new_joining_date FROM employees;

SELECT name, joining_date - INTERVAL 6 Month AS new_joining_date FROM employees;

SELECT name, DATEDIFF(CURDATE(), joining_date) AS total_days FROM employees;






