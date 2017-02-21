CREATE PROC usp_CalculateFutureValueForAccount (@accountId int, @interestRate float)
AS
SELECT TOP (1) a.AccountHolderId AS [Account Id],
	   FirstName AS [First Name],
	   LastName AS [Last Name],
	   a.Balance AS [Current Balance],
	   dbo.ufn_CalculateFutureValue(a.Balance, @interestRate, 5) AS [Balance in 5 years]
FROM AccountHolders AS ah
JOIN Accounts AS a ON a.AccountHolderId = ah.Id
WHERE a.AccountHolderId = @accountId

EXEC usp_CalculateFutureValueForAccount 1, 0.1
