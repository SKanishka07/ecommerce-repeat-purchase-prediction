-- Product Analysis
SELECT product_id, ROUND(SUM(price), 2) AS revenue
FROM order_items
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

SELECT product_id, COUNT(*) AS times_purchased
FROM order_items
GROUP BY product_id
ORDER BY times_purchased DESC
LIMIT 10;

SELECT ROUND(AVG(price), 2) AS average_product_price
FROM order_items;

