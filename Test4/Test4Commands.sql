--Nuha Imran
--20696366

--1 View
CREATE VIEW StudentHours(student_id,student_name,hourspent,no_of_activities)
AS
SELECT s1.stuNo,CONCAT(s1.firstName, " ",s1.lastName)  AS fullname, c.hours, c.activityNo
FROM s1 Students LEFT OUTER JOIN (SELECT c1.stuNo AS stu_id, SUM(c1.hours) AS hours_spent,COUNT(c1.stuNo) AS activity_no
FROM c1 CommWork
GROUP BY c1.stuNo) AS c
WHERE s1.stuNo = c.stuNo;

--to show only students who are participating a virtual table
SELECT * 
FROM StudentHours 
WHERE no_of_activities <> 0;




--2 Procedure
DELIMITER $$
CREATE PROCEDURE addActivity(
 a CHAR(6),
 aName VARCHAR(24),
 FacCode CHAR(3),
 leade CHAR(6),
 actdur SMALLINT (2)
 )
 BEGIN
 IF actdur < 0 THEN
 INSERT INTO Activity(activityNo,activityName,facultyCode,leader,estCost)
 VALUES (a, aName, FacCode,leade,0);
 ELSE
 INSERT INTO Activity(activityNo,activityName,facultyCode,leader,estCost,duration)
 VALUES(a, aName, FacCode, leade, 0, actdur);
 ENDIF;
 END $$
 DELIMITER;
 
 --to call procedure and insert values
 CALL addActivity('22', 'Sports', 'B21', 'Pink');
 or
 CALL addActivity('22', 'Sports', 'B21', 'Pink', 3);
 
 --3 updated procedure
 DELIMITER $$
 CREATE PROCEDURE addActivity(
 a CHAR(6),
 aName VARCHAR(24),
 FacCode CHAR(3),
 leade CHAR(6),
 actdur SMALLINT (2)
 )
 BEGIN
 IF actdur < 0 THEN
 INSERT INTO Activity(activityNo,activityName,facultyCode,leader,estCost)
 VALUES (a, aName, FacCode,leade,0);
 ELSE
 INSERT INTO Activity(activityNo,activityName,facultyCode,leader,estCost,duration)
 VALUES(a, aName, FacCode, leade, 0, actdur);
 ENDIF;
 SET @total_est_cost = (SELECT SUM(estCost) FROM Activity);
 END $$
 DELIMITER;
 
 --to show total estimatedcost
 CALL addActivity('22', 'Sports', 'B21', 'Pink', @total_est_cost);
 SELECT @total_est_cost;
 
 --4 trigger
 ALTER TABLE Faculty ADD projecTraCost DECIMAL(8,2);
 
 --to set all to zero
 UPDATE Faculty SET projecTraCost = 0;
 
 --creating the trigger
 DELIMITER $$
 CREATE TRIGGER  total_travel_cost
 AFTER UPDATE ON Activity
 FOR EACH ROW
 IF NEW.travelCost is NOT NULL AND OLD.travelCost IS NOT NULL THEN
 UPDATE Faculty SET projecTraCost = projecTraCost + NEW.travelCost - OLD.travelCost
 WHERE facultyCode = NEW.facultyCode;
 
 ELSEIF NEW.travelCost IS NOT NULL THEN
 UPDATE Faculty SET projecTraCost = projecTraCost + NEW.travelCost
 WHERE facultyCode = NEW.facultyCode;
 
 END IF;
 END $$
 DELIMITER;
 
 --no need to do anything it will work itself once updated
