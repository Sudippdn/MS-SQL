/*
Subqueryes (int the Select, From and Where statement
*/

Select *
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as Average_Salary
From EmployeeSalary

-- Subquery Using Partition By

Select Sal.EmployeeID,Salary, AVG(Sal.Salary) OVER () as Average_Salary
From EmployeeSalary as Sal


-- Group By Does not work
Select Salary, AVG(Sal.Salary) as Average_Salary
From EmployeeSalary as Sal
Group BY Salary
Order By 1,2

-- SubQuery in From
Select a.Salary, Average_Salary
From (Select Sal.EmployeeID,Salary, AVG(Sal.Salary) OVER () as Average_Salary
	   From EmployeeSalary as Sal) a

-- SubQuery in Where

select EmployeeID, JobTitle, Salary
From EmployeeSalary
Where EmployeeId in (
	Select EmployeeID
	From EmployeeDemoGraphics
	where age >20
)

