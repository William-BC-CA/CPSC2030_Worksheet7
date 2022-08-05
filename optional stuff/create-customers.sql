CREATE TABLE Customers(
    First_Name  VARCHAR(255)    NOT NULL,
    Last_Name   VARCHAR(255)    NOT NULL,
    Phone_Number    INT(10)     NOT NULL,
    Email       VARCHAR(255)    NOT NULL,
    Address     VARCHAR(255)    NOT NULL,
    City        VARCHAR(255)    NOT NULL,
    Customer_ID INT(11)     PRIMARY KEY
);

INSERT INTO Customers
VALUES('John', 'Doe', '123-456-7890', 'example@example.com', '1234 Example St', 'Void', '1234567898');

INSERT INTO Customers
VALUES('Jane', 'Percy', '133-556-7891', 'hello@oof.com', '1235 Example St', 'Coquitlam', '1234543332');