SELECT FirstName, LastName, HireDate, d.Name FROM Employees as e
JOIN Departments as d ON e.DepartmentID = d.DepartmentID
WHERE (d.Name = 'Finance' OR d.Name = 'Sales') AND HireDate > '01-01-1999'
ORDER BY HireDate