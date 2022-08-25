--Nuha Imran
--20696366


--1 
tee PracTest2_working_number.out

--2
SOURCE Practest2Tables_1;
SOURCE Practest2Values_1;

--3
SELECT * FROM Student;

--4
SELECT stuNo, phoneNo,courseCode
FROM Students
WHERE phoneNo IS NULL;

--5
SELECT CONCAT(stuNo,' ',address1,' ',address2,' ',address3) AS streetaddress
FROM Students
WHERE courseCode NOT IN('CS5SU','EG5DU','AG2PG');

--6
SELECT stuNo,firstName,lastName,courseCode
FROM Students
WHERE courseCode LIKE '%CS%';

--7
SELECT firstName,lastName,courseCode,DATE_FORMAT(birthDate, '%W, %e %M %Y') AS birthDate
FROM Students
WHERE courseCode LIKE '%CS%';

--8
SELECT stuNo,firstName,DATEDIFF(SYSDATE(), startDate/365.25) AS registeredCourse
FROM Students;


--9
SELECT firstName,lastName,fieldDeposit AS oldDesposit,ROUND(fieldDeposit*10/100, 0) AS NewDeposit
FROM Students;

--9b
SELECT firstName,lastName,fieldDeposit AS oldDesposit,ROUND(fieldDesposit*10/100, 0) AS NewDeposit
FROM Students
WHERE NewDeposit >= 2000;




