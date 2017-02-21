CREATE PROC dbo.usp_EmployeesBySalaryLevel (@input varchar(7))
AS

SELECT FirstName AS [First Name],
	   LastName AS [Last Name] 
FROM Employees as e
WHERE dbo.ufn_GetSalaryLevel(e.Salary) = @input

EXEC usp_EmployeesBySalaryLevel 'High'