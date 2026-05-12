Write SQL queries to create a VIEW for employees having salary greater than 50000 from the
Employees table. Display the records from the VIEW in ascending order of Employee_Name using
the ORDER BY clause.


CREATE TABLE Employees(
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(30),
    Salary INT
);

INSERT INTO Employees VALUES
(1,'Aditi',60000),
(2,'Rahul',45000),
(3,'Priya',70000),
(4,'Karan',55000);

CREATE VIEW HighSalaryEmployees AS
SELECT *
FROM Employees
WHERE Salary > 50000;

SELECT * FROM HighSalaryEmployees
ORDER BY Employee_Name ASC;
