CREATE TABLE Cities(
	CityID int PRIMARY KEY NOT NULL,
	Name varchar(50) NOT NULL
)

CREATE TABLE ItemTypes(
	ItemTypeID int PRIMARY KEY NOT NULL,
	Name varchar(50) NOT NULL,
)

CREATE TABLE Customers(
	CustomerID int PRIMARY KEY NOT NULL,
	Name varchar(50) NOT NULL,
	Birthday DATE,
	CityID int NOT NULL,
	CONSTRAINT FK_CityID FOREIGN KEY(CityID) REFERENCES Cities(CityID)
)

CREATE TABLE Items(
	ItemID int PRIMARY KEY NOT NULL,
	Name varchar(50) NOT NULL,
	ItemTypeID int NOT NULL,
	CONSTRAINT FK_ItemTypeID FOREIGN KEY (ItemTypeID) REFERENCES ItemTypes(ItemTypeID),
)

CREATE TABLE Orders (
	OrderID int NOT NULL,
	CustomerID int NOT NULL,
	CONSTRAINT PK_Orders PRIMARY KEY(OrderID),
	CONSTRAINT FK_CustomerID FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE OrderItems (
	OrderID int NOT NULL,
	ItemID int NOT NULL,
	CONSTRAINT PK_OrderItems PRIMARY KEY(OrderID,ItemID),
	CONSTRAINT FK_OrderID FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	CONSTRAINT FK_ItemID FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
)