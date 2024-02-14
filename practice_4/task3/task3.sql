CREATE TABLE seller (
    seller_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    contact_email VARCHAR(255),
    postal_address VARCHAR(255)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    number_available INT,
    seller_id INT,
    FOREIGN KEY (seller_id) REFERENCES seller(seller_id)
);
