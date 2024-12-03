# Write your MySQL query statement below
SELECT U.unique_id, E.name
FROM Employees E
LEFT JOIN EmployeeUNI U
ON E.id = U.id;




# Left Join -  All the columns from the left tables & only matching col from right tables