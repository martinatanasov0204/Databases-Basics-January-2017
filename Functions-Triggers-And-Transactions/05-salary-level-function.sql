CREATE FUNCTION ufn_GetSalaryLevel (@Salary money)
RETURNS nvarchar(7)

BEGIN 
	IF(@Salary < 30000)
		return 'Low';
	ELSE IF(@Salary >= 30000 AND @Salary <= 50000)
		return 'Average';

	return 'High';
END

SELECT Salary, dbo.ufn_GetSalaryLevel(e.Salary) AS [Salary Level] FROM Employees as e

