/*
Topic: Aliasing 
*/

-- combine two columns but w/o "as" will default to "no column name"
Select firstName + ' ' + lastname 
from SQLTutorial.dbo.EmployeeDeomographics

-- combine two columns into 1 - alias in column names 
Select firstName + ' ' + lastname as FullName 
from SQLTutorial.dbo.EmployeeDeomographics

SElect distinct(employeeID), *
FROM SQLTutorial.dbo.EmployeeDeomographics


-- alias in table name, good to use when doing 'joins' 
SELECT demo.EmployeeID, sal.Salary
FROM SQLTutorial.dbo.EmployeeDeomographics as DEMO
join SQLTutorial.dbo.EmployeeSalary as sal
	on demo.EmployeeID = sal.EmployeeID

SELECT demo.EmployeeID, sal.Salary
FROM SQLTutorial.dbo.EmployeeDeomographics as DEMO
left join SQLTutorial.dbo.EmployeeSalary as sal
	on demo.EmployeeID = sal.EmployeeID
left join SQLTutorial.dbo.warehouseemployeedemographics ware 
	on demo.EmployeeID = ware.employeeid