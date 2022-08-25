/*trigger for error checking when the points of drivers are updated they cannot be lesser than the old one*/
DELIMITER //

CREATE TRIGGER beforeUpdatingPoints
BEFORE UPDATE
ON Drivers FOR EACH ROW
BEGIN
DECLARE errorMessage VARCHAR(100);
SET errorMessage = CONCAT('The new points',' ', NEW.points,' ',
'cannot be lesser than',' ', OLD.points); 
IF NEW.points < OLD.points THEN
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = errorMessage;
END IF;
END//
DELIMITER ;
/*UPDATE Drivers SET points = 32 WHERE DName = 'Lewis Hamilton';*/

/*deletes from drivers once team deleted*/

DELIMITER //
CREATE TRIGGER afterTeamDeleted
BEFORE DELETE ON Team
FOR EACH ROW
BEGIN
IF OLD.TName IS NOT NULL THEN
DELETE FROM Drivers
WHERE TName = OLD.TName;
END IF;
END //
DELIMITER ;
/*DELETE FROM Team WHERE TName = 'Ferrari';*/
