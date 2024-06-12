# Write your MySQL query statement below
WITH cte AS(
SELECT *, UPPER(LEFT(name, 1)) AS f, 
LOWER(SUBSTRING(name, 2, LENGTH(name))) AS l
FROM Users)
SELECT user_id, CONCAT(f,l) AS name
FROM cte
ORDER BY user_id