-- 1. 초기 테이블 생성
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    BirthDate DATE,
    DepartmentInfo VARCHAR2(255),
    Salary NUMBER
);

-- 데이터 삽입
INSERT INTO Employees (EmployeeID, Name, BirthDate, DepartmentInfo, Salary)
VALUES (1, '스티븐', TO_DATE('2010-12-31', 'YYYY-MM-DD'), '영업부, 서울시.. 01234', 300);

INSERT INTO Employees (EmployeeID, Name, BirthDate, DepartmentInfo, Salary)
VALUES (2, '마리', TO_DATE('2011-10-01', 'YYYY-MM-DD'), '영업부, 서울시.. 01234', 250);

INSERT INTO Employees (EmployeeID, Name, BirthDate, DepartmentInfo, Salary)
VALUES (3, '찰스', TO_DATE('2003-05-01', 'YYYY-MM-DD'), '사업부, 경기도...02345', 200);

INSERT INTO Employees (EmployeeID, Name, BirthDate, DepartmentInfo, Salary)
VALUES (4, '마리아', TO_DATE('1995-08-15', 'YYYY-MM-DD'), '인사부, 서울시.. 01234', 280);

INSERT INTO Employees (EmployeeID, Name, BirthDate, DepartmentInfo, Salary)
VALUES (5, '제임스', TO_DATE('1988-03-22', 'YYYY-MM-DD'), '영업부, 서울시.. 01234', 320);

INSERT INTO Employees (EmployeeID, Name, BirthDate, DepartmentInfo, Salary)
VALUES (6, '안나', TO_DATE('2000-12-10', 'YYYY-MM-DD'), '영업부, 서울시.. 01234', 270);