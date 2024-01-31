/*
Having Clause
*/

Select JobTitle, AVG(Salary)	
From SQLProject.dbo.EmployeeDemoGraphics
Join SQLProject.dbo.EmployeeSalary
	ON EmployeeDemoGraphics.EmployeeId = EmployeeSalary.EmployeeID
Group by JobTitle
Having AVG(Salary) > 1
Order by avg(salary)