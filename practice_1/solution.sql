-- ### task 4 ### --

-- part 1

SELECT CURRENT_DATE();
SELECT NOW();
SELECT SYSDATE();
SELECT DAY(CURDATE());
SELECT DATE_FORMAT("2024-01-17", "%W %M %e %Y");

-- part 2

SELECT CURRENT_TIME();
SELECT CURTIME();
SELECT HOUR(CURTIME());
SELECT MINUTE(CURTIME());
SELECT SECOND(CURTIME());




-- ### task 5 ### --

SHOW DATABASES;
USE sys;
SHOW TABLES;

USE mysql;
SHOW TABLES;
SELECT * FROM user;




-- ### task 7 ### --

CREATE DATABASE market_2023;
USE market_2023;

CREATE TABLE Customers (
    cust_id char(10) NOT NULL,
    cust_name char(50) NOT NULL,
    cust_address char(50) NULL,
    cust_city char(50) NULL,
    cust_state char(5) NULL,
    cust_zip char(10) NULL,
    cust_country char(50) NULL,
    cust_contact char(50) NULL,
    cust_email char(255) NULL
);

CREATE TABLE OrderItems (
    order_num int NOT NULL,
    order_item int NOT NULL,
    prod_id char(10) NOT NULL,
    quantity int NOT NULL,
    item_price decimal(8,2) NOT NULL

);

CREATE TABLE Orders (
    order_num int NOT NULL,
    order_date date NOT NULL,
    cust_id char(10) NOT NULL
);

CREATE TABLE Products (
    prod_id char(10) NOT NULL,
    vend_id char(10) NOT NULL,
    prod_name char(255) NOT NULL,
    amount int NOT NULL,
    prod_price decimal(8,2) NOT NULL,
    prod_desc text NULL
);

CREATE TABLE Vendors (
    vend_id char(10) NOT NULL,
    vend_name char(50) NOT NULL,
    vend_address char(50) NULL,
    vend_city char(50) NULL,
    vend_state char(5) NULL,
    vend_zip char(10) NULL,
    vend_country char(50) NULL
);


ALTER TABLE Customers ADD PRIMARY KEY (cust_id);

ALTER TABLE OrderItems ADD PRIMARY KEY (order_num, order_item);

ALTER TABLE Orders ADD PRIMARY KEY (order_num);

ALTER TABLE Products ADD PRIMARY KEY (prod_id);

ALTER TABLE Vendors ADD PRIMARY KEY (vend_id);


ALTER TABLE OrderItems ADD CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (order_num) REFERENCES Orders (order_num);

ALTER TABLE OrderItems ADD CONSTRAINT FK_OrderItems_Products FOREIGN KEY (prod_id) REFERENCES Products (prod_id);

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (cust_id) REFERENCES Customers (cust_id);

ALTER TABLE Products ADD CONSTRAINT FK_Products_Vendors FOREIGN KEY (vend_id) REFERENCES Vendors (vend_id);