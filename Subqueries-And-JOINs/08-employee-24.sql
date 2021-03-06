SELECT e.EmployeeID, e.FirstName, 
CASE 
	WHEN p.StartDate > '20050101' THEN NULL
ELSE p.Name
END AS [ProjectName] FROM Employees as e
JOIN EmployeesProjects as ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects as p ON p.ProjectID = ep.ProjectID
WHERE e.EmployeeID = 24
ORDER BY e.EmployeeID