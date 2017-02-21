CREATE FUNCTION ufn_IsWordComprised(@setOfLetters nvarchar(max), @word nvarchar(max)) 
RETURNS bit
AS
BEGIN
	WHILE(LEN(@word) > 0)
	BEGIN
		DECLARE @currLetter nvarchar(1) = SUBSTRING(@word, 1, 1)
		IF (@setOfLetters NOT LIKE '%' + @currLetter + '%')
		BEGIN 
			return 0;
		END

		SET @word = RIGHT(@word,LEN(@word)-1)
	END

	return 1;
END

SELECT Salary, dbo.ufn_IsWordComprised('bobr', 'Rob') FROM Employees