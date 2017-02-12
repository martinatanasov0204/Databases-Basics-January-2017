SELECT TOP (3) e.EmployeeID, FirstName FROM Employees as e
LEFT JOIN EmployeesProjects as ep ON e.EmployeeID = ep.EmployeeID
WHERE ep.EmployeeID IS NULL
ORDER BY e.EmployeeID