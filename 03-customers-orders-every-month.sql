
-- Q3. Find customers who have placed orders
-- in every month of 2025.

SELECT
    c.customer_id,
    c.customer_name
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_date >= DATE '2025-01-01'
  AND o.order_date < DATE '2026-01-01'
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(DISTINCT EXTRACT(MONTH FROM o.order_date)) = 12;
