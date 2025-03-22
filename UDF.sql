CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    manager_id INT NULL,
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);

INSERT INTO employees (name, manager_id) VALUES 
('Alice', NULL),        -- Alice is the CEO (No manager)
('Bob', 1),            -- Bob reports to Alice
('Charlie', 1),        -- Charlie reports to Alice
('David', 2),          -- David reports to Bob
('Eve', 2);  
          -- Eve reports to Bob

DELIMITER $$

CREATE FUNCTION get_manager(emp_id INT) RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    DECLARE manager_name VARCHAR(50);

    SELECT name INTO manager_name 
    FROM employees 
    WHERE id = (SELECT manager_id FROM employees WHERE id = emp_id);

    RETURN manager_name;
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION count_employees(managerID INT) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total FROM employees WHERE manager_id = managerID;

    RETURN total;
END$$

DELIMITER ;
SELECT id, name, get_manager(id) AS manager FROM employees;
SELECT id, name, count_employees(id) AS team_size FROM employees;





