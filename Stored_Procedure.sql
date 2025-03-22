CREATE DATABASE outlet;
USE outlet;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP PROCEDURE IF EXISTS InsertOrder;
DROP PROCEDURE IF EXISTS GetAllOrders;
DROP PROCEDURE IF EXISTS GetOrderByID;
DROP PROCEDURE IF EXISTS UpdateOrderQuantity;
DROP PROCEDURE IF EXISTS DeleteOrder;
DROP PROCEDURE IF EXISTS GetOrdersByCustomer;
DROP PROCEDURE IF EXISTS CountTotalOrders;

DELIMITER $$

CREATE PROCEDURE InsertOrder(
    IN p_CustomerName VARCHAR(100),
    IN p_ProductName VARCHAR(100),
    IN p_Quantity INT,
    IN p_TotalPrice DECIMAL(10,2)
)
BEGIN
    INSERT INTO Orders (CustomerName, ProductName, Quantity, TotalPrice)
    VALUES (p_CustomerName, p_ProductName, p_Quantity, p_TotalPrice);
END $$

CREATE PROCEDURE GetAllOrders()
BEGIN
    SELECT * FROM Orders;
END $$

CREATE PROCEDURE GetOrderByID(IN p_OrderID INT)
BEGIN
    SELECT * FROM Orders WHERE OrderID = p_OrderID;
END $$

CREATE PROCEDURE UpdateOrderQuantity(
    IN p_OrderID INT,
    IN p_NewQuantity INT
)
BEGIN
    UPDATE Orders
    SET Quantity = p_NewQuantity
    WHERE OrderID = p_OrderID;
END $$

CREATE PROCEDURE DeleteOrder(IN p_OrderID INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = p_OrderID;
END $$

CREATE PROCEDURE GetOrdersByCustomer(IN p_CustomerName VARCHAR(100))
BEGIN
    SELECT * FROM Orders WHERE CustomerName = p_CustomerName;
END $$

CREATE PROCEDURE CountTotalOrders()
BEGIN
    SELECT COUNT(*) AS TotalOrders FROM Orders;
END $$

DELIMITER ;

CALL InsertOrder('Prikshit', 'Laptop', 2, 100000);
CALL InsertOrder('Param', 'Mobile', 2, 50000);

CALL GetAllOrders();
CALL GetOrderByID(2);
CALL UpdateOrderQuantity(2, 3);
CALL DeleteOrder(1);
CALL GetOrdersByCustomer('Param');
CALL CountTotalOrders();

