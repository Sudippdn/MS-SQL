/*
Temp Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int, 
JobTitle varchar(100),
Salary int,
);

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee
SELECT *
FROM SQLProject..EmployeeSalary  -- taking the data from EmployeeSalary


INSERT INTO #temp_Employee VALUES  --Normal way using codes
(1001, 'Bikash', 54000)