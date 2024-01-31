SELECT * 
FROM EmployeeForTheProject

UPDATE EmployeeForTheProject
SET E_AGE = 22, E_salary = 84000, E_Address = 'Morang'
WHERE E_Name = 'Sudeep' AND EmployeeID = 202404
							-- Here I am selecting tn attribute E_Name
							-- and EmployeeID to spicify the row
							-- and set age and address

DELETE FROm EmployeeForTheProject	
WHERE E_Name = 'Sandeep'  -- specifying the name 
						  -- if we have primary key then
						  -- use primary key instead


