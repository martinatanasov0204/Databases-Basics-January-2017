CREATE PROC dbo.usp_GetEmployeesFromTown (@town varchar(max))
AS
SELECT FirstName AS [First Name],
	   LastName AS [Last Name]
FROM Employees AS e

LEFT JOIN Addresses as a ON a.AddressID = e.AddressID
LEFT JOIN Towns as t ON t.TownID = a.TownID

WHERE t.Name = @town

EXEC usp_GetEmployeesFromTown Sofia