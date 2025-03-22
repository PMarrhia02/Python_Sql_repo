CREATE DATABASE companyT;
USE companyT;
CREATE TABLE Employees_Trigger (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'Active'
);

CREATE TABLE Employee_Audit_Log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    status VARCHAR(20),
    action VARCHAR(50),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Employees_Trigger (name, department, salary, status) VALUES 
('Amit Sharma', 'HR', 50000, 'Active'),
('Priya Verma', 'IT', 60000, 'Active'),
('Rohan Gupta', 'Finance', 55000, 'Inactive'),
('Sneha Iyer', 'IT', 70000, 'Active'),
('Vikas Yadav', 'Marketing', 48000, 'Active'),
('Neha Mehta', 'Finance', 65000, 'Inactive'),
('Rajesh Kumar', 'IT', 72000, 'Active');

CREATE TRIGGER before_insert_employee
BEFORE INSERT ON Employees_Trigger
FOR EACH ROW
SET NEW.name = UPPER(NEW.name);

CREATE TRIGGER after_insert_employee
AFTER INSERT ON Employees_Trigger
FOR EACH ROW
INSERT INTO Employee_Audit_Log (employee_id, name, department, salary, status, action)
VALUES (NEW.id, NEW.name, NEW.department, NEW.salary, NEW.status, 'INSERT');

INSERT INTO Employees_Trigger (name, department, salary, status)  
VALUES ('Param', 'HR', 30000.00, 'Active');

SELECT * FROM Employees_Trigger;
SELECT * FROM Employee_Audit_Log;

SET GLOBAL local_infile=1;