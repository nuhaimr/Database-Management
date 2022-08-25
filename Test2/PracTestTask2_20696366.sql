CREATE TABLE Dept(
deptNo CHAR(3),
deptBuilding CHAR(4),
telephone CHAR(6)
);


CREATE TABLE Employee(
empNo CHAR(5) PRIMARY KEY,
empDigit CHAR(1),
firstName VARCHAR(25),
LastName VARCHAR(25),
salary DECIMAL(8, 2),
deptNo CHAR(3)
CONSTRAINT fk_deptNo
FOREIGN KEY(deptNo) REFERENCES Dept(deptNo)
);


