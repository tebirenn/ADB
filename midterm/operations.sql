SELECT * FROM stock_details;

UPDATE stock_details SET quantity = 120 WHERE stock_id = 2;

DELETE FROM buyer_details WHERE buyer_id = 3;

SELECT COUNT(*) AS num_defaulters FROM defaulters_list;

SELECT SUM(profit) AS total_profit FROM profit_calculation;

SELECT * FROM payment_details WHERE payment_status = 'pending';

SELECT delivery_date FROM stock_delivery WHERE customer_id = 1;

SELECT s.stock_id, s.stock_name, s.quantity, b.buyer_id, b.buyer_name, b.address
FROM stock_details s
LEFT JOIN buyer_details b ON s.stock_id = b.stock_id;

SELECT c.customer_id, c.customer_name, SUM(CASE WHEN p.payment_status = 'pending' THEN 1 ELSE 0 END) AS pending_payments
FROM customer_details c
LEFT JOIN payment_details p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.customer_name;

SELECT r.stock_id, s.stock_name, r.quantity_needed
FROM restock_reminder r
JOIN stock_details s ON r.stock_id = s.stock_id
WHERE s.quantity < r.quantity_needed;

SELECT pc.month, pc.profit, COUNT(sd.delivery_id) AS num_deliveries
FROM profit_calculation pc
LEFT JOIN stock_delivery sd ON pc.month = DATE_FORMAT(sd.delivery_date, '%Y-%m-01')
GROUP BY pc.month, pc.profit;

SELECT cd.customer_id, cd.customer_name
FROM customer_details cd
LEFT JOIN payment_details pd ON cd.customer_id = pd.customer_id
WHERE pd.customer_id IS NULL;
