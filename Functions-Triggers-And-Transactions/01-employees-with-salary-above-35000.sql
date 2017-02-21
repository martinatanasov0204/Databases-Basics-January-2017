CREATE PROC dbo.usp_GetEmployeesSalaryAbove35000 
AS
SELECT FirstName AS [First Name], 
	   LastName AS [Last Name]
FROM Employees AS e
WHERE e.Salary > 35000

EXEC usp_GetEmployeesSalaryAbove35000 