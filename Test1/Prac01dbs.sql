--Name = Nuha
--Studentid = 20696366

--1
SHOW DATABASES;

--2creating table first use DSwork to change database
--Command to create table
CREATE TABLE Festival (
festivalID CHAR(4), 
name VARCHAR(20) , 
location VARCHAR(12) , 
date DATE,
count INT(4)
);

--3 to show columns of table
DESCRIBE Festival;

--4 Inserting values
INSERT INTO Festival VALUES('10', 'Street Arts 2021', NULL, NULL, NULL);
--to retrieve all rows
SELECT * FROM Festival;

--5 Insert other festival
INSERT INTO Festival VALUES('101', NULL, 'Fremantle', '2022-02-12', 250);
--retrieve all rows
SELECT * FROM Festival;

--6
INSERT INTO Festival VALUES('11', 'Talent way', 'Hallway', '2022-02-13', 350);
--retrieve all rows
SELECT * FROM Festival;

--7 showing increase in festival 101 from 250 to 350
UPDATE Festival
SET count = 350
WHERE festivalID = '101';
--retrieve all rows
SELECT * FROM Festival;

--Task2
--VARCHAR(FIRSTNAME)
--VARCHAR(SECONDNAME)
--INT(TELEPHONE)
--DECIMAL(3,2)(FOR RATE)


--2
CREATE TABLE Artist (
artistcode INT(5), 
firstname VARCHAR(20) , 
secondname VARCHAR(20) , 
telephone INT(6),
rate DECIMAL(5, 2)
);

--3
--Basically creates a table and the attributes become columns
DESCRIBE Artist;
--this command will show all columns from that certain table
INSERT INTO Artist VALUES(11, 'John', 'OBrien', 9889988, 200.00);
--this command will insert this row to its given columns
SELECT * FROM Artist;
--this command will show everything in artists

--Task3

--1To creaye that venue table
SOURCE Venue1.txt or \. Venue1.txt
--To show rows and tables
SELECT * FROM Venue;

--2
--show venue name,capacity of those that have more than 250
SELECT name,capacity
FROM Venue
WHERE capacity > 250;

--3 Delete venues of sand city
DELETE
FROM Venue
WHERE city = 'Sand City';
