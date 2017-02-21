CREATE PROC usp_WithdrawMoney (@accountId int, @moneyAmount float)
AS
BEGIN
	BEGIN TRANSACTION
		DECLARE @currAmount money = (SELECT TOP (1) Balance FROM Accounts as a
			JOIN AccountHolders AS ah ON a.AccountHolderId = ah.Id
			WHERE ah.Id = @accountId)
			IF(@currAmount < @moneyAmount)
			BEGIN
				ROLLBACK
				RAISERROR ('some error', 16, 1)
			END
			ELSE
				UPDATE Accounts SET Balance -= @moneyAmount WHERE Accounts.Id = @accountId 
	COMMIT
END

EXEC usp_WithdrawMoney 1, 100