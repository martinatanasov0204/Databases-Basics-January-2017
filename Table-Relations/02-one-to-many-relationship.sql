CREATE TABLE Models (
	ModelID int NOT NULL,
	Name varchar(50) NOT NULL,
	ManufacturerID int NOT NULL,
)

CREATE TABLE Manufacturers (
	ManufacturerID int NOT NULL,
	Name varchar(50) NOT NULL,
	EstablishedOn date default GETDATE(),
)

INSERT INTO Models
VALUES (101,'X1',1),
	   (102,'i6',1),
	   (103,'Model S',2),
	   (104,'Model X',2),
	   (105,'Model 3',2),
	   (106,'Nova',3)

INSERT INTO Manufacturers
VALUES (1,'BMW','07/03/1916'),
	   (2,'Tesla','01/01/2003'),
	   (3,'Lada','01/05/1966')

ALTER TABLE Models 
ADD CONSTRAINT PK_ModelID
PRIMARY KEY(ModelID)

ALTER TABLE Manufacturers
ADD CONSTRAINT PK_ManufacturerID
PRIMARY KEY (ManufacturerID)

ALTER TABLE Models 
ADD CONSTRAINT FK_ManufacturerID
FOREIGN KEY (ManufacturerID)
REFERENCES Manufacturers(ManufacturerID)
