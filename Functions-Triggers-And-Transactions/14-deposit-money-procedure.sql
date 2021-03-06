CREATE PROC usp_DepositMoney (@accountId int, @moneyAmount money)
AS
BEGIN
	BEGIN TRANSACTION
			UPDATE Accounts SET Balance += @moneyAmount
			WHERE Id = @accountId 
	COMMIT
END

EXEC usp_DepositMoney 1, 5000