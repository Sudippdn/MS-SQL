SELECT FirstName, LastName, Salary, JobTitle, Gender,
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM SQLProject.dbo.EmployeeDemoGraphics as Demo
Inner Join SQLProject.dbo.EmployeeSalary as Sal
ON Demo.EmployeeId = Sal.EmployeeID


SELECT *
FROM SQLProject.dbo.EmployeeDemoGraphics as Demo
Inner Join SQLProject.dbo.EmployeeSalary as Sal
ON Demo.EmployeeId = Sal.EmployeeID