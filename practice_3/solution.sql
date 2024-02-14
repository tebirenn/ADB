-- ### task 1 ### --

SELECT *
FROM customers;

SELECT prod_id
FROM orderitems;

SELECT DISTINCT prod_id
FROM orderitems;



-- ### task 2 ### --

SELECT *
FROM products
WHERE prod_price >= 5;

SELECT *
FROM orderitems
WHERE quantity > 50;

SELECT *
FROM customers
WHERE cust_country = 'USA';

SELECT *
FROM customers
WHERE cust_email IS NOT NULL;

SELECT *
FROM vendors
WHERE vend_country != 'USA';



-- ### task 3 ### --

SELECT *
FROM orders AS o, orderitems AS oi
WHERE o.order_num = oi.order_num;

SELECT *
FROM orders AS o, customers AS c
WHERE o.cust_id = c.cust_id;

SELECT p.prod_name, p.prod_price * p.amount AS total_price, v.vend_name, v.vend_country
FROM products AS p, vendors AS v
WHERE p.vend_id = v.vend_id;

SELECT oi.order_item, p.prod_name, oi.quantity * p.prod_price AS total_price
FROM products AS p, orderitems AS oi
WHERE p.prod_id = oi.prod_id;

-- на 5ый не хватает фантаций, да и 5 таблиц связаны 4мя узлами, все 4 использовал



-- ### task 4 ### --

SELECT *
FROM products
WHERE prod_id LIKE 'BR%';

SELECT *
FROM products
WHERE prod_price LIKE '%.99';

SELECT *
FROM customers
WHERE cust_contact LIKE '%j%';



-- ### task 5 ### --

SELECT *
FROM products
ORDER BY prod_price, amount;

SELECT *
FROM orderitems
ORDER BY prod_id DESC;

SELECT *
FROM orders
ORDER BY order_date;



-- ### task 6 ### --

SELECT p.prod_name, o.order_num, oi.quantity
FROM products AS p, orders AS o, orderitems AS oi
WHERE p.prod_id = oi.prod_id AND oi.order_num = o.order_num;

SELECT c.cust_contact, o.order_date, oi.prod_id
FROM customers AS c, orders AS o, orderitems AS oi
WHERE c.cust_id = o.cust_id AND o.order_num = oi.order_num;

SELECT p.prod_name, oi.item_price, oi.quantity, v.vend_country
FROM products AS p, orderitems AS oi, vendors AS v
WHERE p.vend_id = v.vend_id AND oi.prod_id = p.prod_id;



-- ### task 7 ### --

SELECT p.prod_name, SUM(oi.quantity) AS total_quantity
FROM products AS p, orderitems AS oi
WHERE p.prod_id = oi.prod_id
GROUP BY p.prod_name;