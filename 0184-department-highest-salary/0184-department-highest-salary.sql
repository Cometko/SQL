# Write your MySQL query statement below
WITH base AS(
    SELECT
        Department,
        Employee,
        Salary,
        RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS r
    FROM (
        SELECT
            d.name AS Department,
            e.name AS Employee,
            e.salary AS Salary
        FROM 
            Employee AS e
            LEFT JOIN Department AS d
            ON e.departmentId = d.id
    ) AS t
)

SELECT
    Department,
    Employee,
    Salary 
FROM base
WHERE r = 1;



