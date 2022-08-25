--Nuha Imran
--20696366

--1)Display the points,Team name, driver name and driver number of drivers who have entered more than 50 races?
SELECT DNumber,DName,TName,points
FROM Drivers 
WHERE racesEntered > 50;

--2)Find the teams,driver names of all the drivers that have more than one win?
SELECT w.DriverNo, COUNT(w.DriverNo),d.DName,d.TName
From Winner w INNER JOIN Drivers d
ON d.DNumber = w.DriverNo
GROUP BY DriverNo
HAVING COUNT(DriverNo) > 1;

--3)Display the race scehduele for each Grand Prix?
SELECT CONCAT(Rdate,' ',Rtime) AS Race_Scheduele, GrandPrix
FROM ParticipatesIn;

--4)Find highest circuit length,which city it is location in,what is name of the race?
SELECT circuitlength,city,GrandPrix
FROM Tracks
WHERE circuitlength = (SELECT MAX(circuitlength)
                 FROM Tracks);



--5)Find the teams that have the same engine constructor?
SELECT TName, constructor
FROM Team
WHERE constructor IN (SELECT constructor
FROM Team
GROUP BY constructor
HAVING COUNT(*) > 1);

--6)Display driver name and number of all drivers that belong to team ferrari?
SELECT DName,DNumber
FROM Drivers
WHERE TName LIKE '%Ferrari%';

--7)Display drivers that have highest points in championship so far?
SELECT points,DName
FROM Drivers
ORDER BY points DESC;

--8)Find the circuit length  which city it is in and which driver no won that race?
SELECT t.circuitlength,t.city,p.DNumber
FROM Tracks t INNER JOIN ParticipatesIn p
ON t.GrandPrix = p.GrandPrix
ORDER BY t.circuitlength DESC;

--9)How many races took place in 2019?
SELECT COUNT(GrandPrix) AS totalRaces
FROM Races;

--10)Display name and team of all drivers who won?
SELECT d.DName,d.TName
FROM Drivers d INNER JOIN Winner w
ON w.DriverNo = d.DNumber
GROUP BY d.DNumber;

--11)Find drivers on team racing point?
SELECT TName,DName
FROM Drivers
WHERE TName = 'Racing Point';

--12)Find the date difference between the first race and second race?
SELECT DATEDIFF("2019/03/31","2019/03/17") AS daysapart;



/*DROP TABLE ParticipatesIn,Tracks,Winner,Races,Drivers,Team;
group by teamname join drover no this and other table and count value*/










