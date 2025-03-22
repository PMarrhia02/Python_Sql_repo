create database companyViews;
use companyViews;

CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

INSERT INTO Employees (name, department, salary, status) VALUES
('John Doe', 'HR', 50000, 'Active'),
('Jane Smith', 'IT', 60000, 'Active'),
('Michael Brown', 'Finance', 55000, 'Inactive'),
('Emily Davis', 'IT', 70000, 'Active'),
('Amit Sharma', 'HR', 50000, 'Active'),
('Priya Verma', 'IT', 60000, 'Active'),
('Rohan Gupta', 'Finance', 55000, 'Inactive'),
('Sneha Iyer', 'IT', 70000, 'Active'),
('Vikas Yadav', 'Marketing', 48000, 'Active'),
('Neha Mehta', 'Finance', 65000, 'Inactive'),
('Rajesh Kumar', 'IT', 72000, 'Active');

CREATE VIEW ActiveEmployees AS
SELECT id, name, department, salary
FROM Employees
WHERE status = 'Active';
SELECT * FROM ActiveEmployees;

CREATE VIEW HighSalaryEmployees AS
SELECT id, name, department, salary
FROM Employees
WHERE salary > 60000;
SELECT * FROM HighSalaryEmployees;

CREATE VIEW ITDepartmentEmployees AS
SELECT id, name, salary, status
FROM Employees
WHERE department = 'IT';
SELECT * FROM ITDepartmentEmployees;

CREATE VIEW EmployeeDetails AS
SELECT id, CONCAT('Employee: ', name) AS full_name, department, salary
FROM Employees;
SELECT * FROM EmployeeDetails;

CREATE VIEW EmployeeCountByDept AS
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;
SELECT * FROM EmployeeCountByDept;






