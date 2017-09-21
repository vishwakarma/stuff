USE DV1454_adba14


Create table TrainStation(
    nrOfTracks INT NOT NULL,
    stationName VARCHAR(20) PRIMARY KEY DEFAULT 'Shitty station with no name'
);
Create table Train(
    trainNr INT PRIMARY KEY  DEFAULT 1337,
    availableSeats INT,
    maxNrOfSeats INT DEFAULT 50,
    departure VARCHAR(20) DEFAULT 'No departure name' ,
    destination VARCHAR(20) DEFAULT 'No destination name'
);

Create table Ticket(
    ticketType VARCHAR(8) NOT NULL DEFAULT 'Standard, lul',
    ticketNr INT DEFAULT 0,
    tSocialSecurityNumber INT NOT NULL DEFAULT 1234567890 FOREIGN KEY REFERENCES Passenger(pSocialSecurityNumber),--#foreign key
    trainNr INT NOT NULL DEFAULT 133 FOREIGN KEY REFERENCES Train(trainNr),--foreign key
    price FLOAT NOT NULL DEFAULT 0,
    departureTime CHAR(5)  NOT NULL DEFAULT '12.34',
    arrivalTime CHAR(5)  NOT NULL DEFAULT '23.23'
);

Create table Passenger(
    pSocialSecurityNumber INT PRIMARY KEY NOT NULL DEFAULT 1234567890, --primary key
    firstName VARCHAR(20)   NOT NULL DEFAULT 'No name',
    lastName VARCHAR(20)    NOT NULL DEFAULT 'No lastname',
    totalTicketCost FLOAT   NOT NULL DEFAULT 13.37
);

INSERT INTO Passenger(pSocialSecurityNumber, firstName, lastName, totalTicketCost) VALUES
    (11111,'hej','da',1),
    (22222,'saker','lol',2),
    (33333,'BTH','databas',3)
INSERT INTO Ticket(ticketType, ticketNr, tSocialSecurityNumber, trainNr, price, departureTime, arrivalTime) VALUES
    ('klass 1',1,11111,1335,123,'12:30','13:30'),
    ('klass 2',2,22222,1336,456,'12:45','13:45'),
    ('klass 3',3,33333,1337,123,'13:00','14:00')

INSERT INTO Train (trainNr, availableSeats, maxNrOfSeats, departure, destination) VALUES
(1,11,11,'A','B'),
(2,22,22,'B','C'),
(3,33,33,'C','D'),
(4,44,44,'A','E');

INSERT INTO TrainStation(nrOfTracks, stationName) VALUES
(1,'A'),
(1,'B'),
(1,'C'),
(1,'D'),
(1,'E');

SELECT *FROM TrainStation
SELECT *FROM Train
SELECT *FROM Passenger
SELECT *FROM Ticket
