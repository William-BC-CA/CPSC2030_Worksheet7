DROP TABLE Orders;
CREATE TABLE Orders(
    Order_ID    INT(11)     PRIMARY KEY,
    Order_Date  DATE,
    Order_Time  TIME,
    Customer_ID INT(11) NOT NULL,
    Shipping_Address    VARCHAR(255)    NOT NULL,
    Order_cost  INT(10) NOT NULL,

    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

SELECT Last_Name, First_Name
FROM Customers
WHERE City != 'Coquitlam';

SELECT ProductSerialNumber, Name, Price
FROM Products
WHERE Price < 300 ORDER BY Date_Manufactured DESC;

SELECT Suppliers.Supplier_Name, ProductSerialNumber, Name, Price
FROM Products, Suppliers
WHERE (Price >=500 AND Price <= 1000) AND (Supplier_Country = 'China' OR Supplier_Country = 'Vietnam');

SELECT *
FROM Orders
WHERE Shipping_Address = 'MONTREAL' AND Order_cost < 600;

SELECT Supplier_Name, COUNT(ProductSerialNumber), AVG(Price)
FROM Products;

UPDATE Suppliers
SET Supplier_City = 'Halifax'
WHERE Supplier_Name = 'Razer Inc.';

DELETE FROM Products
WHERE ProductSerialNumber = 3443;