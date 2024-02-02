/*
CTE:  Common Table Expression
*/

 WITH CTE_Employee as 
 (SELECT FirstName, LastName, Salary, Gender,
COUNT(GENDER) OVER (PARTITION BY Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM SQLProject.dbo.EmployeeDemoGraphics as Demo
Inner Join SQLProject.dbo.EmployeeSalary as Sal
    ON Demo.EmployeeId = Sal.EmployeeID
WHERE Salary > 2000
)
SELECT *
FROM  CTE_Employee



SELECT *
FROM SQLProject.dbo.EmployeeDemoGraphics


SELECT *
FROM SQLProject.dbo.EmployeeSalary