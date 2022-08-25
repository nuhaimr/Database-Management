/*this view shows the best drivers from all championships*/
CREATE VIEW best_drivers AS
SELECT DNumber,DName,points,racesEntered
FROM Drivers
WHERE racesEntered > 50 AND points > 2000;

/*USAGE--SELECT * FROM best_drivers;*/

/*view is of drivers who have more than one win*/
CREATE VIEW winningStreak AS
SELECT w.DriverNo, COUNT(w.DriverNo),d.DName,d.TName
From Winner w INNER JOIN Drivers d
ON d.DNumber = w.DriverNo
GROUP BY DriverNo
HAVING COUNT(DriverNo) > 1;

/*USAGE--SELECT * FROM winningStreak*/





