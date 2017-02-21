CREATE FUNCTION ufn_CalculateFutureValue (@sum money, @yearlyInterestRate float, @numOfYears int)
RETURNS money
AS
BEGIN
	DECLARE @i money = @sum;
	DECLARE @r float = @yearlyInterestRate;
	DECLARE @t int = @numOfYears

	DECLARE @result float = @i * POWER(1 + @r, @t)

	RETURN @result
END

SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5) 
