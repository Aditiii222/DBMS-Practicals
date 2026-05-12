Q Write a PL/SQL stored procedure that deletes an employee from the Employees table. The
procedure should take EmployeeID as an input parameter.

CREATE TABLE Emp(
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(20),
    Emp_Salary BIGINT
);

INSERT INTO Emp VALUES
(101,'Aditi',50000),
(102,'Rahul',60000);

DELIMITER //

CREATE PROCEDURE DeleteEmployee(
    p_EmployeeID INT
)
BEGIN
    DELETE FROM Emp
    WHERE Emp_ID = p_EmployeeID;
END //

DELIMITER ;

CALL DeleteEmployee(101);

SELECT * FROM Emp;
