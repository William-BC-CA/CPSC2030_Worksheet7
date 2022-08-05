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
WHERE City != 'Coquitlam'
ORDER BY Last_Name ASC;

SELECT ProductSerialNumber, Name, Price
FROM Products
WHERE Price < 300
ORDER BY Date_Manufactured DESC;

SELECT Suppliers.Supplier_Name, ProductSerialNumber, Name, Price
FROM Products, Suppliers
WHERE (Price >= 500 AND Price <= 1000) AND (Suppliers.Supplier_Name = Products.Supplier_Name AND Suppliers.Supplier_ID = Products.Supplier_ID) AND (Supplier_Country = 'China' OR Supplier_Country = 'Vietnam');

SELECT Orders.*
FROM Orders, Customers
WHERE Shipping_Address = 'MONTREAL' AND Order_cost < 600 AND Customers.Customer_ID = Orders.Customer_ID;

SELECT Supplier_Name, COUNT(ProductSerialNumber), AVG(Price)
FROM Products
GROUP BY Supplier_Name;

UPDATE Suppliers
SET Supplier_City = 'Halifax'
WHERE Supplier_Name = 'Razer Inc.';

DELETE FROM Products
WHERE Supplier_Name = 'MSI Inc.' AND ProductSerialNumber = 3443;