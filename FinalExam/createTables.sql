

/*table for teams*/
DROP TABLE IF EXISTS Team;
CREATE TABLE Team
  (TName VARCHAR(50) NOT NULL,
  constructor VARCHAR(30) NOT NULL,
  chassis CHAR(25) NOT NULL,
  Tpoints INT(5) NOT NULL,
  PRIMARY KEY(TName)
  );
  
 DROP TABLE IF EXISTS Drivers;
 CREATE TABLE Drivers
 (DNumber INT(3) PRIMARY KEY,
 DName VARCHAR(60) NOT NULL,
 points  INT (6),
 racesEntered INT(3) NOT NULL,
 TName VARCHAR(50) NOT NULL,
 CONSTRAINT team_Name
 FOREIGN KEY (TName) REFERENCES Team(TName)
 );
 
 DROP TABLE IF EXISTS Winner;
 CREATE TABLE Winner
 (location VARCHAR(25) PRIMARY KEY,
 Team VARCHAR(50) NOT NULL,
 DriverNo INT(3) NOT NULL
 );
 
 DROP TABLE IF EXISTS Races;
 CREATE TABLE Races
 (GrandPrix VARCHAR(60) PRIMARY KEY,
 location VARCHAR(25) NOT NULL,
 CONSTRAINT location_l
 FOREIGN KEY(location) REFERENCES Winner(location)
 );
 
 DROP TABLE IF EXISTS Tracks;
 CREATE TABLE Tracks
 (circuitName VARCHAR(50) PRIMARY KEY,
 GrandPrix VARCHAR(60) NOT NULL,
 circuitlength DECIMAL(4,3) NOT NULL,
 city VARCHAR(25) NOT NULL,
 CONSTRAINT track_name
 FOREIGN KEY(GrandPrix) REFERENCES Races(GrandPrix)
 );
 
 DROP TABLE IF EXISTS ParticipatesIn;
 CREATE TABLE ParticipatesIn
 (Rdate DATE NOT NULL,
 Rtime TIME NOT NULL,
 DNumber INT(3) NOT NULL,
 GrandPrix VARCHAR(60) NOT NULL,
 FOREIGN KEY (DNumber) REFERENCES Drivers(DNumber),
 FOREIGN KEY(GrandPrix) REFERENCES Races(GrandPrix)
 );
 
 
 
 
