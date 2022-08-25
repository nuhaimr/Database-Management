
CREATE PROCEDURE insNewTeam(
  TeamName VARCHAR(50),
  EngineMaker VARCHAR(30),
  EngineModel CHAR(25),
  TeamPoints INT(5)
  )
  COMMENT 'Inserts another team in team table'
  INSERT INTO Team(TName, constructor, chassis, Tpoints)
  VALUES(TeamName,EngineMaker,EngineModel,TeamPoints);

/*USAGE:CALL insNewTeam('Range Rover','Range Rover','C34',0);*/

CREATE PROCEDURE findTotalRaces(
OUT tRace INT
)
COMMENT 'Count the number of races in each season.'
SELECT COUNT(GrandPrix) FROM Races;
/*USAGE CALL findTotalRaces(@result);*/

/*procedure to insert new values into table winner*/

CREATE PROCEDURE insNewWinner(
  place VARCHAR(25),
  TeamName VARCHAR(50),
  DriverNumber INT(3)
  )
  INSERT INTO Winner(location, Team, DriverNo)
  VALUES(place,TeamName,DriverNumber);

/*USAGE--CALL insNewWinner('Morocco','merced',53);*/

