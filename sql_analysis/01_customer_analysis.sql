-- Customer Analysis
SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY customer_unique_id
ORDER BY total_orders DESC;

SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY customer_unique_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY total_orders DESC;


SELECT
    customer_unique_id,
    MIN(order_purchase_timestamp) AS first_order,
    MAX(order_purchase_timestamp) AS last_order,
    EXTRACT(DAY FROM MAX(order_purchase_timestamp) - MIN(order_purchase_timestamp))
        AS customer_lifetime_days
FROM orders
GROUP BY customer_unique_id;
