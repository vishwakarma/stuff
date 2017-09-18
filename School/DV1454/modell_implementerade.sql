
Create table TrainStation(
    nrOfTracks INT NOT NULL,
    stationName VARCHAR(20) NOT NULL DEFAULT 'Shitty station with no name'
);
Create table Train(
    trainNr INT PRIMARY KEY  NOT NULL DEFAULT 1337, 
    availableSeats INT,
    maxNrOfSeats INT = 50,
    departure VARCHAR(20) NOT NULL DEFAULT 'No departure name' ,
    destination VARCHAR(20) NOT NULL DEFAULT 'No destination name'
);

Create table Ticket(
    ticketType VARCHAR(8), NOT NULL DEFAULT 'Standard, lul',
    ticketNr INT DEFAULT 0,
    tSocialSecurityNumber INT NOT NULL DEFAULT 1234567890 --#foreign key  
    trainNr INT NOT NULL DEFAULT 1337, --foreign key
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
