CREATE TABLE Products(
    ProductSerialNumber     VARCHAR(255)    NOT NULL,
    Name    VARCHAR(255)    NOT NULL,
    Supplier_ID     INT(11) NOT NULL,
    Supplier_Name   VARCHAR(255)    NOT NULL,
    Date_Manufactured   DATE    NOT NULL,
    Price       INT(10)     NOT NULL,

    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID),
    FOREIGN KEY (Supplier_Name) REFERENCES Suppliers(Supplier_Name)
);