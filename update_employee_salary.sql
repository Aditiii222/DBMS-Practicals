Q Write a PL/SQL stored procedure that updates the Salary of an employee. The procedure
should accept EmployeeID and NewSalary as input parameters.

CREATE TABLE Emp(
    Emp_Id INT PRIMARY KEY,
    Emp_Name VARCHAR(20),
    Emp_Salary BIGINT
);

INSERT INTO Emp VALUES
(101,'Aditi',100);

DELIMITER //

CREATE PROCEDURE UpdateSalary(
    p_EmployeeID INT,
    p_NewSalary BIGINT
)
BEGIN
    UPDATE Emp
    SET Emp_Salary = p_NewSalary
    WHERE Emp_Id = p_EmployeeID;
END //

DELIMITER ;

CALL UpdateSalary(101,150000);
SELECT * FROM Emp;
