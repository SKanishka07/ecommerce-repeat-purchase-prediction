-- Payment Analysis
SELECT payment_type, COUNT(*) AS payment_count
FROM payments
GROUP BY payment_type
ORDER BY payment_count DESC;


SELECT
    payment_type,
    ROUND(SUM(payment_value), 2) AS total_payment_value
FROM payments
GROUP BY payment_type
ORDER BY total_payment_value DESC;
