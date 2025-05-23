# Write your MySQL query statement below
#TABLE: Employee
#INNER JOIN,
#TABLE: e1:employee's table / e2:manager's table

SELECT 
 e1.name AS Employee
FROM Employee AS e1
INNER JOIN Employee  AS e2
ON e1.managerId = e2.id
WHERE e1.salary > e2.salary