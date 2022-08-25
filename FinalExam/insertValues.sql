/*Name:Nuha Imran
Date:30/03/22*/

INSERT INTO
  Team(TName,constructor,chassis,Tpoints)

VALUES
('Ferrari','Ferrari','SF90',739),
('Mercedes','Mercedes','F1 W10 EQ Power+',504),
('Red Bull Racing','Honda','RB15',417),
('McLaren','Renault','MCL34',145),
('Renault','Renault', 'R.S.19',91),
('Alfa Romeo Racing','Ferrari','C38',57),
('Scuderia Toro Rosso','Honda', 'STR14',85),
('Racing Point','BWT Mercedes','RP19',73),
('Haas','Ferrari','VF-19',28),
('Williams','Mercedes','FW42',1);

INSERT INTO Drivers VALUES
(44,'Lewis Hamilton',3431,250,'Mercedes');
INSERT INTO Drivers VALUES
(77,'Valtteri Bottas',1289,140,'Mercedes');
INSERT INTO Drivers VALUES
(33,'Max Verstappen',948,102,'Red Bull Racing');
INSERT INTO Drivers VALUES
(16,'Charles Leclerc',303,42,'Ferrari');
INSERT INTO Drivers VALUES
(5,'Sebastian Vettel',2985,241,'Ferrari');
INSERT INTO Drivers VALUES
(55,'Carlos Sainz',267,102,'McLaren');
INSERT INTO Drivers VALUES
(10,'Pierre Gasly',124,47,'Scuderia Toro Rosso');
INSERT INTO Drivers VALUES
(23,'Alexander Albon',92,21,'Red Bull Racing');
INSERT INTO Drivers VALUES
(3,'Daniel Ricciardo',1040,171,'Renault');
INSERT INTO Drivers VALUES
(11,'Sergio Perez',581,178,'Racing Point');
INSERT INTO Drivers VALUES
(4,'Lando Norris',49,21,'McLaren');
INSERT INTO Drivers VALUES
(7,'Kimi Raikkonen',1859,315,'Alfa Romeo Racing');
INSERT INTO Drivers VALUES
(26,'Daniil Kvyat',170,95,'Scuderia Toro Rosso');
INSERT INTO Drivers VALUES
(27,'Nico Hulkenberg',511,179,'Renault');
INSERT INTO Drivers VALUES
(18,'Lance Stroll',67,62,'Racing Point');
INSERT INTO Drivers VALUES
(20,'Kevin Magnussen',157,103,'Haas');
INSERT INTO Drivers VALUES
(99,'Antonio Giovinazzi',14,23,'Alfa Romeo Racing');
INSERT INTO Drivers VALUES
(8,'Romain Grosjean',389,166,'Haas');
INSERT INTO Drivers VALUES
(88,'Robert Kubica',274,97,'Williams');
INSERT INTO Drivers VALUES
(63,'George Russell',0,21,'Williams');

INSERT INTO Winner(DriverNo,Team,location)

VALUES
(77,'Mercedes','Australia'),
(44,'Mercedes','Bahrain'),
(44,'Mercedes','China'),
(77,'Mercedes','Azerbaijan'),
(44,'Mercedes','Spain'),
(44,'Mercedes','Canada'),
(44,'Mercedes','France'),
(33,'Red Bull Racing','Austria'),
(44,'Mercedes','Great Britain'),
(33,'Red Bull Racing','Germany'),
(44,'Mercedes','Hungary'),
(16,'Ferrari','Belgium'),
(16,'Ferrari','Italy'),
(5,'Ferrari','Singapore'),
(44,'Mercedes','Russia'),
(77,'Mercedes','Japan'),
(44,'Mercedes','Mexico'),
(77,'Mercedes','United States'),
(33,'Red Bull Racing','Brazil'),
(44,'Mercedes','Abu Dhabi'),
(44,'Mercedes','Monaco');



INSERT INTO Races(GrandPrix,location)

VALUES
('Australian GP','Australia'),
('Bahrain GP','Bahrain'),
('Chinese GP','China'),
('Azerbaijan GP','Azerbaijan'),
('Spanish GP','Spain'),
('Monaco GP','Monaco'),
('Canadian GP','Canada'),
('French GP','France'),
('Austrian GP','Austria'),
('German GP','Germany'),
('British GP','Great Britain'),
('Hungarian GP','Hungary'),
('Belgian GP','Belgium'),
('Italian GP','Italy'),
('Singapore GP','Singapore'),
('Russian GP','Russia'),
('Japanese GP','Japan'),
('Mexican GP','Mexico'),
('United States GP','United States'),
('Brazilian GP','Brazil'),
('Abu Dhabi GP','Abu Dhabi');

INSERT INTO Tracks(circuitName,GrandPrix,circuitlength,city)

VALUES
('Albert Park','Australian GP',5.303,'Melbourne'),
('Bahrain International','Bahrain GP',5.412,'Sakhir'),
('Shanghai International','Chinese GP',5.412,'Shanghai'),
('Baku City','Azerbaijan GP',6.003,'Baku'),
('Circuit de Barcelona-Catalunya','Spanish GP',4.655,'Spain'),
('Circuit de Monaco','Monaco GP',3.337,'Monte-Carlo'),
('Circuit Gilles-Villeneuve','Canadian GP',4.361,'Montreal'),
('Circuit Paul Ricard','French GP',5.842,'La Castellet'),
('Red Bull Ring','Austrian GP',5.842,'Spielberg'),
('Silverstone circuit','British GP',5.891,'Silverstone'),
('Hockenheimring','German GP',4.574,'Hockenheim'),
('Hungaroring','Hungarian GP',4.381,'Budapest'),
('Circuit de Spa-Francorchamps','Belgian GP',7.004,'Budapest'),
('Autodromo Nazionale Monza','Italian GP',5.793,'Monza'),
('Marina Bay Street','Singapore GP',5.063,'Singapore'),
('Sochi Autodrom','Russian GP',5.848,'Sochi'),
('Suzuka International Racing Course','Japanese GP','5.807','Suzuka'),
('Autodromo Hermanos Rodriguez','Mexican GP',4.304,'Mexico city'),
('Circuit of the Americas','United States GP',5.513,'Austin'),
('Autodromo Jose Carlos Pace','Brazilian GP',4.309,'Sab Paulo'),
('Yas Marina','Abu Dhabi GP',5.554,'Yas Island');

INSERT INTO ParticipatesIn(Rdate,Rtime,DNumber,GrandPrix)
VALUES
('2019/03/17','05:10:00',77,'Australian GP'),
('2019/03/31','04:10:00',44,'Bahrain GP'),
('2019/04/14','07:10:00',44,'Chinese GP'),
('2019/04/28','01:10:00',77,'Azerbaijan GP'),
('2019/05/12','02:10:00',44,'Spanish GP'),
('2019/05/26','02:10:00',44,'Monaco GP'),
('2019/06/09','07:10:00',44,'Canadian GP'),
('2019/06/23','02:10:00',44,'French GP'),
('2019/06/30','02:10:00',33,'Austrian GP'),
('2019/07/14','02:10:00',44,'British GP'),
('2019/07/28','02:10:00',33,'German GP'),
('2019/08/04','02:10:00',44,'Hungarian GP'),
('2019/09/01','02:10:00',16,'Belgian GP'),
('2019/09/08','02:10:00',16,'Italian GP'),
('2019/09/22','01:10:00',5,'Singapore GP'),
('2019/09/29','12:10:00',44,'Russian GP'),
('2019/10/13','06:10:00',77,'Japanese GP'),
('2019/10/27','07:10:00',44,'Mexican GP'),
('2019/11/3','07:10:00',77,'United States GP'),
('2019/11/17','05:10:00',33,'Brazilian GP'),
('2019/12/01','01:10:00',44,'Abu Dhabi GP');








