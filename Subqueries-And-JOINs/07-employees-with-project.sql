SELECT TOP (5) e.EmployeeID, e.FirstName, p.Name AS [ProjectName] FROM Employees as e
JOIN EmployeesProjects as ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects as p ON p.ProjectID = ep.ProjectID
WHERE p.StartDate > '20020813' AND p.EndDate IS NULL
ORDER BY e.EmployeeID