# Write your MySQL query statement below
WITH cte1 AS(
SELECT customer_number, COUNT(order_number) AS Order_
FROM Orders
GROUP BY customer_number
ORDER BY Order_ DESC
)
SELECT customer_number
FROM cte1
LIMIT 1;

