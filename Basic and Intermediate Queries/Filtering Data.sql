SELECT EmployeeDemoGraphics.EmployeeId, FirstName, LastName, Salary
FROM SQLProject.dbo.EmployeeDemoGraphicsU
Inner Join SQLProject.dbo.EmployeeSalary
	ON EmployeeDemoGraphics.EmployeeId = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Ram' -- Removing Ram from the dataset
ORDER BY Salary DESC

SELECT JobTitle, Salary
FROM SQLProject.dbo.EmployeeDemoGraphics
Inner Join SQLProject.dbo.EmployeeSalary
	ON EmployeeDemoGraphics.EmployeeId = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'  -- selecting based on the jobatitle and salary of Salesman
ORDER BY Salary

SELECT *
FROM SQLProject.dbo.EmployeeDemoGraphics

SELECT JobTitle, AVG(Salary)
FROM SQLProject.dbo.EmployeeDemoGraphics
Inner Join SQLProject.dbo.EmployeeSalary
	ON EmployeeDemoGraphics.EmployeeId = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'  -- selecting based on the jobatitle and salary of Salesman
GROUP BY JobTitle