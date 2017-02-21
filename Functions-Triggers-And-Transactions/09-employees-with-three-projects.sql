CREATE PROC usp_AssignProject(@emloyeeId int, @projectID int) 
AS

BEGIN
		DECLARE @maxAllowedProjects int = 3;
		DECLARE @EmployeesProjectsCount int = (SELECT COUNT(*) FROM EmployeesProjects as ep
		WHERE ep.EmployeeID = @emloyeeId)

BEGIN TRANSACTION
	INSERT INTO EmployeesProjects(EmployeeID, ProjectID) values (@emloyeeId, @projectID)

	IF(@EmployeesProjectsCount >= @maxAllowedProjects)
	BEGIN 
		RAISERROR('The employee has too many projects!', 16, 1)
		ROLLBACK
	END
	
	ELSE
		COMMIT
END

EXEC usp_AssignProject 7657, 2