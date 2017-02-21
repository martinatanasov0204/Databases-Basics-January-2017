CREATE PROC usp_TransferMoney (@senderId int, @recieverId int, @amount money)
AS
BEGIN
	DECLARE @currSenderMoney money = (SELECT TOP (1) Balance FROM Accounts as a
			JOIN AccountHolders AS ah ON a.AccountHolderId = ah.Id
			WHERE ah.Id = @senderId)

	DECLARE @currRecierverMoney money = (SELECT TOP (1) Balance FROM Accounts as a
			JOIN AccountHolders AS ah ON a.AccountHolderId = ah.Id
			WHERE ah.Id = @recieverId)

	BEGIN TRANSACTION
		IF(@amount < 0)
		BEGIN
			ROLLBACK
			RAISERROR ('some error', 16, 1)
		END
		ELSE
		BEGIN
			EXEC usp_WithdrawMoney @senderId, @amount
			EXEC usp_DepositMoney @recieverId, @amount
		END

		COMMIT
END