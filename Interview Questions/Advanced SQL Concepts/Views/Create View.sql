-- CREATE VIEW 

CREATE VIEW order_summary AS 
(
SELECT 
    c.customer_id,
    o.order_id,
    oi.product_id
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON oi.product_id = o.order_id 
);



SELECT * FROM order_summary;
