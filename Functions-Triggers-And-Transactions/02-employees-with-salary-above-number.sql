CREATE PROC dbo.usp_GetEmployeesSalaryAboveNumber (@money money)
AS
SELECT FirstName AS [First Name],
	   LastName AS [Last Name] 
FROM Employees AS e
WHERE e.Salary >= @money

EXEC usp_GetEmployeesSalaryAboveNumber 48100