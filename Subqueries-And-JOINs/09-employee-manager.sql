SELECT e.EmployeeID, e.FirstName, e.ManagerID, e1.FirstName FROM Employees as e
JOIN Employees as e1 ON e.ManagerID = e1.EmployeeID
WHERE e.ManagerID IN (3, 7)
ORDER BY e.EmployeeID