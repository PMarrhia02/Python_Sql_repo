Create Database company;
use company;
create table employees(employee_id INT AUTO_INCREMENT PRIMARY KEY, 
    first_name VARCHAR(50),                  
    last_name VARCHAR(50),                      
    email VARCHAR(100) UNIQUE,          
    phone_number VARCHAR(15),                 
    department VARCHAR(50),               
    salary DECIMAL(10,2),                      
    hire_date DATE,                              
    job_title VARCHAR(50)                        
);

select * from employees;
INSERT INTO employees (first_name, last_name, email, phone_number, department, salary, hire_date, job_title)
VALUES 
('Prikshit', 'M', 'prikshit@company.com', '9876543210', 'IT', 55000.00, '2023-06-01', 'Full Stack'),
('Param', 'S', 'param@company.com', '9876543211', 'IT', 70000.00, '2022-05-15', 'Software Engineer'),
('Chahat', 'B', 'chahat@company.com', '9876543212', 'Sales', 60000.00, '2021-08-10', 'Sales Executive');

show databases;
ALTER TABLE employees ADD COLUMN address VARCHAR(255);
ALTER TABLE employees MODIFY COLUMN phone_number VARCHAR(20);
ALTER TABLE employees CHANGE COLUMN job_title position VARCHAR(50);
ALTER TABLE employees RENAME TO company_employees;

TRUNCATE TABLE company_employees;
select * from company_employees;
DROP TABLE company_employees;

--  String Functions










