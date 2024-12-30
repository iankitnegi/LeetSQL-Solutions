# Write your MySQL query statement below
SELECT P.product_id,
    CASE
        WHEN SUM(U.units)>0 THEN ROUND(SUM(P.price*U.units)/SUM(U.units),2)
        ELSE 0
    END AS average_price
FROM Prices P
LEFT JOIN UnitsSold U
ON P.product_id = U.product_id AND purchase_date BETWEEN start_date AND end_date
GROUP BY P.product_id;

#When compare date b/w two dates -> Use BETWEEN