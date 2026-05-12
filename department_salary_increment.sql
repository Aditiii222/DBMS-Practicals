Q Write a PL/SQL procedure to increase salary of employees department-wise by 10% and display
updated salary records.

CREATE TABLE Emp(
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(20),
    Emp_Dep VARCHAR(20),
    Emp_Salary INT
);

INSERT INTO Emp VALUES
(101,'Aditi','IT',50000),
(102,'Rahul','HR',40000),
(103,'Priya','IT',60000);

DELIMITER //

CREATE PROCEDURE UpdateSalary(
    p_Department VARCHAR(20)
)
BEGIN
    UPDATE Emp
    SET Emp_Salary = Emp_Salary + (0.10 * Emp_Salary)
    WHERE Emp_Dep = p_Department;
END //

DELIMITER ;

CALL UpdateSalary('IT');
SELECT * FROM Emp;
