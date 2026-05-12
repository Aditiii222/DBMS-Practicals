Q Write a PL/SQL stored procedure that inserts a new employee into the Employees table. The
procedure should accept the EmployeeID, Name, and Salary as input parameters. After executing
the procedure, retrieve the details of the newly inserted employee.

CREATE TABLE Employee(
    Emp_ID INT PRIMARY KEY,
    Name VARCHAR(20),
    Salary BIGINT
);

DELIMITER //

CREATE PROCEDURE AddEmployee(
    p_Emp_ID INT,
    p_Name VARCHAR(20),
    p_Salary BIGINT
)
BEGIN
    INSERT INTO Employee
    VALUES(p_Emp_ID,p_Name,p_Salary);
END //

DELIMITER ;

CALL AddEmployee(1,'Aditi',5000);

SELECT * FROM Employee;
