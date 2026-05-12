Q Write SQL queries to perform pattern matching on the Employee table using the LIKE operator to
find employees whose names start with the letter 'A'. Also, use aggregate functions with GROUP BY
and HAVING clauses to display department-wise average salary where the average salary is greater
than 50000.

Show all tables
SHOW TABLES;

View employee table
SELECT * FROM emp;

--------------------------------------------------
-- 1. Pattern Matching using LIKE
-- Employees whose names start with 'A'
--------------------------------------------------

SELECT *
FROM emp
WHERE emp_name LIKE 'A%';

--------------------------------------------------
-- 2. Department-wise average salary > 50000
-- Using GROUP BY and HAVING
--------------------------------------------------

SELECT emp_dep, AVG(emp_salary) AS avg_salary
FROM emp
GROUP BY emp_dep
HAVING AVG(emp_salary) > 50000;
