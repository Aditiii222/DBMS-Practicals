Q Write a trigger that restricts modification of primary key values in the Student table.


CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT
);

INSERT INTO Student VALUES (1, 'Aditi', 85);
INSERT INTO Student VALUES (2, 'Ravi', 90);

DELIMITER //

CREATE TRIGGER trg_restrict_pk_update
BEFORE UPDATE ON Student
FOR EACH ROW
BEGIN
    IF NEW.Student_ID <> OLD.Student_ID THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Modification of Primary Key is not allowed';
    END IF;
END//

DELIMITER ;

UPDATE Student SET Student_ID = 10 WHERE Student_ID = 1;
