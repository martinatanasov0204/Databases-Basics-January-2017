CREATE PROC usp_GetHoldersWithBalanceHigherThan (@param money)
AS
SELECT FirstName AS [First Name],
	   LastName AS [Last Name]
FROM AccountHolders as ah
JOIN Accounts AS a ON a.AccountHolderId = ah.Id
GROUP BY FirstName, LastName
HAVING SUM(Balance) > @param

EXEC usp_GetHoldersWithBalanceHigherThan 5000
