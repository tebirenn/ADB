CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) UNIQUE,
    city VARCHAR(255)
);

CREATE TABLE part (
    part_number INT PRIMARY KEY AUTO_INCREMENT,
    color VARCHAR(255)
);

CREATE TABLE supply (
    supplier_id INT,
    part_number INT,
    quantity INT,
    PRIMARY KEY (supplier_id, part_number),
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id),
    FOREIGN KEY (part_number) REFERENCES part(part_number)
);
# Как и в task#2 потребовалось доп. таблица, там же можно зафиксировать количество