CREATE TABLE Persons (
	PersonID int NOT NULL,
	FirstName varchar(50) NOT NULL,
	Salary money NOT NULL,
	PassportID int NOT NULL
)

CREATE TABLE Passports (
	PassportID int NOT NULL,
	PassporTNumber varchar(255)
)

INSERT INTO Passports(PassportID, PassportNumber)
VALUES (101,'N34FG21B'),
       (102,'K65LO4R7'),
	   (103,'ZE657QP2')

INSERT INTO Persons(PersonID, FirstName, Salary, PassportID)
VALUES (1,'Roberto',43300.00,102),
       (2,'Tom',56100.00,103),
	   (3,'Yana',60200.00,101)

ALTER TABLE Persons 
ADD CONSTRAINT PK_PersonID
PRIMARY KEY(PersonID)

ALTER TABLE Passports
ADD CONSTRAINT PK_PassportID
PRIMARY KEY (PassportID)

ALTER TABLE Persons 
ADD CONSTRAINT FK_PassportID
FOREIGN KEY (PassportID)
REFERENCES Passports(PassportID)
