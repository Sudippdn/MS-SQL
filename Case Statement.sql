/*
Todays Topic: Case Statement
*/
SELECT FirstName, LastName, Age, JobTitle,
CASE
	WHEN JobTitle = 'Salesman' Then Salary + (Salary * 0.1)
	WHEN JobTitle = 'Technical' Then Salary + (Salary * 0.1)
	WHEN JobTitle = 'Driver' Then Salary + (Salary * 0.1)
	ELSE Salary + (Salary * 0.8)
END AS SalaryAfterRise
FROM SQLProject.dbo.EmployeeDemoGraphics
JOIN SQLProject.dbo.EmployeeSalary
  ON EmployeeDemoGraphics.EmployeeId = EmployeeSalary.EmployeeID
