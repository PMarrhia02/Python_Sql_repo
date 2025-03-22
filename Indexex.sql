use companyviews;

DROP INDEX idx_department ON Employees;

CREATE INDEX idx_department ON Employees(department);
SELECT * FROM Employees WHERE department = 'IT';
SELECT * FROM Employees WHERE name = 'Priya Verma';
CREATE UNIQUE INDEX idx_unique_name ON Employees(name);
INSERT INTO Employees (name, department, salary, status) 
VALUES ('Amit Sharma', 'HR', 50000, 'Active');
SHOW INDEX FROM Employees;


