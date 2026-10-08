create database menaga;
use menaga;
CREATE OR REPLACE PROCEDURE InsertStudent (
    p_StudentID IN NUMBER,
    p_StudentName IN VARCHAR2,
    p_DepartmentID IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (p_StudentID, p_StudentName, p_DepartmentID);

    COMMIT;
END;
/

BEGIN
    InsertStudent(1001, 'Arun', 1);
END;
/
