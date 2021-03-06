SELECT TOP (50) e.EmployeeID,
e.FirstName + ' ' + e.LastName AS [EmployeeName],
e1.FirstName + ' ' + e1.LastName AS [ManagerName],
d.Name as [DepartmentName]
FROM Employees as e
JOIN Employees as e1 ON e.ManagerID = e1.EmployeeID
JOIN Departments as d ON d.DepartmentID = e.DepartmentID
ORDER BY e.EmployeeID