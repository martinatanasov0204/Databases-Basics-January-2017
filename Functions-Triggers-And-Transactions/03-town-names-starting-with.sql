CREATE PROC dbo.usp_GetTownsStartingWith (@char varchar(max))
AS
SELECT Name AS [Town] FROM Towns AS t
WHERE SUBSTRING(t.Name, 1, LEN(@char)) = @char

EXEC usp_GetTownsStartingWith b