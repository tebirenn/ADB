INSERT INTO stock_details (stock_name, quantity) VALUES
('Widget A', 100),
('Widget B', 150),
('Widget C', 200);

INSERT INTO buyer_details (buyer_name, address, stock_id) VALUES
('ABC Wholesalers', '123 Main St, City, Country', 1),
('XYZ Distributors', '456 Elm St, City, Country', 2),
('LMN Traders', '789 Oak St, City, Country', 3);

INSERT INTO customer_details (customer_name, address) VALUES
('John Doe', '101 Oak St, City, Country'),
('Jane Smith', '202 Maple St, City, Country'),
('Bob Johnson', '303 Pine St, City, Country');

INSERT INTO defaulters_list (customer_id) VALUES
(1),
(3);

INSERT INTO payment_details (customer_id, payment_status) VALUES
(1, 'paid'),
(2, 'pending'),
(3, 'paid');

INSERT INTO restock_reminder (stock_id, quantity_needed) VALUES
(1, 50),
(2, 75),
(3, 100);

INSERT INTO profit_calculation (month, profit) VALUES
('2024-01-01', 50000.00),
('2024-02-01', 60000.00),
('2024-03-01', 55000.00);

INSERT INTO stock_delivery (stock_id, customer_id, delivery_date) VALUES
(1, 1, '2024-03-05'),
(2, 2, '2024-03-10'),
(3, 3, '2024-03-15');
