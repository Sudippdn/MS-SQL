DROP TABLE IF EXISTS #Temp_Employee3
CREATE TABLE #temp_Employee3
(
JobTitle varchar(50),
EmployeeSPerJob int,
AvgAge int,
Salary int)

insert into #temp_Employee3
Select *
From SQLProject.dbo.EmployeeDemoGraphics

select *
From #temp_Employee3