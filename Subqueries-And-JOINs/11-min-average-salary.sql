SELECT MIN(a.AverageSalary) FROM (
SELECT AVG(Salary) as AverageSalary FROM Employees as e 
GROUP BY e.DepartmentID
) as a