CREATE TABLE stock_details (
    stock_id INT AUTO_INCREMENT PRIMARY KEY,
    stock_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE buyer_details (
    buyer_id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    stock_id INT,
    FOREIGN KEY (stock_id) REFERENCES stock_details(stock_id)
);

CREATE TABLE customer_details (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE defaulters_list (
    defaulter_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id)
);

CREATE TABLE payment_details (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    payment_status ENUM('paid', 'pending') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id)
);

CREATE TABLE restock_reminder (
    restock_id INT AUTO_INCREMENT PRIMARY KEY,
    stock_id INT,
    quantity_needed INT NOT NULL,
    FOREIGN KEY (stock_id) REFERENCES stock_details(stock_id)
);

CREATE TABLE profit_calculation (
    month DATE PRIMARY KEY,
    profit DECIMAL(10,2) NOT NULL
);

CREATE TABLE stock_delivery (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    stock_id INT,
    customer_id INT,
    delivery_date DATE NOT NULL,
    FOREIGN KEY (stock_id) REFERENCES stock_details(stock_id),
    FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id)
);
