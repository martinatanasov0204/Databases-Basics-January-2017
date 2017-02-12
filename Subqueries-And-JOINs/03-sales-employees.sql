SELECT EmployeeID, FirstName, LastName, d.Name AS [DepartmentName] FROM Employees as e
JOIN Departments as d ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'
ORDER BY EmployeeID