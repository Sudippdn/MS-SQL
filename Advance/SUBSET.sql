/*
String Functions - TRIM,LTRIM, RTRIM, REPLACE, SUBSTRING< UPPER, LOWER
*/

-- Using REPLACE keyword

SELECT LastName , REPLACE(LastName, '-Fired','') as LastNameFixed
FROM EmployeeErrors

-- Using SubString keyword
-- SUBSTRING(Attribute,position, indexValue) 

SELECT err.FirstName, SUBSTRING(err.FirstName, 1, 3) as FromError,
Demo.FirstName, SUBSTRING(Demo.FirstName, 1,3) as FromDemo

FROM EmployeeErrors as err
Inner Join SQLProject.dbo.EmployeeDemoGraphics as Demo
	ON SUBSTRING(err.FirstName, 1,3) = SUBSTRING(Demo.FirstName, 1,3)

