SELECT TOP (5) EmployeeID, FirstName, Salary, d.Name AS [DepartmentName] FROM Employees as e
JOIN Departments as d ON e.DepartmentID = d.DepartmentID
WHERE Salary > 15000
ORDER BY d.DepartmentID