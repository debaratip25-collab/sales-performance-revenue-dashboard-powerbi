CREATE DATABASE sales_project;
USE sales_project;

CREATE TABLE Sales (
    Order_ID VARCHAR(10),
    Product_ID VARCHAR(10),
    Customer_ID VARCHAR(10),
    Date DATE,
    Quantity INT,
    Price DECIMAL(10,2),
    Sales_Amount DECIMAL(10,2)
);

CREATE TABLE Products (
    Product_ID VARCHAR(10),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(100)
);

CREATE TABLE Customers (
    Customer_ID VARCHAR(10),
    Region VARCHAR(50),
    Country VARCHAR(50),
    Segment VARCHAR(50)
);

SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Sales_cleaned.csv'
INTO TABLE Sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Products.csv'
INTO TABLE Products
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

SELECT * FROM Sales LIMIT 10;

ALTER TABLE Products
ADD PRIMARY KEY (Product_ID);

ALTER TABLE Customers
ADD PRIMARY KEY (Customer_ID);

ALTER TABLE Sales
ADD FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID);

ALTER TABLE Sales
ADD FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID);

