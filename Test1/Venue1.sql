-- Creating Venue table
CREATE TABLE Venue(
	venueid INT,
	name VARCHAR(15),
	capacity INT,
	city VARCHAR(12),
	telephone VARCHAR(10)
);	
-- adding data to venue table
INSERT INTO Venue VALUES(100, 'Best Hall Ever', 400, 'Perth', '0415574377');

INSERT INTO Venue VALUES(101, 'Bells Functions', 90, 'Perth', '0415570034');

INSERT INTO Venue VALUES(102, 'Swan River Edge', 300, 'Sand City', '0013419001');

INSERT INTO Venue VALUES(103, 'Como Community', 250, 'Forestedge', '0023550082');

INSERT INTO Venue VALUES(104, 'Moonlight', 270, 'Infinity', '0023556670');

INSERT INTO Venue VALUES(105, 'Blue Water', 350, 'SwanCity', '0024567770');

INSERT INTO Venue VALUES(106, 'Far End Arena', 550, 'Sand City', '0024556781');
