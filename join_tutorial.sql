/*
Inner Joins, Full/left/right outer joins 
*/

SELECT * 
FROM SQLTutorial.dbo.EmployeeDeomographics

SELECT * 
FROM SQLTutorial.dbo.EmployeeSalary

SELECT *
FROM SQLTutorial.dbo.EmployeeDeomographics 
Inner Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM SQLTutorial.dbo.EmployeeDeomographics 
Full outer Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT *
FROM SQLTutorial.dbo.EmployeeDeomographics 
left outer Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID

-- must include the table name for the column header/name since we are doing a join from 2 tables 
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM SQLTutorial.dbo.EmployeeDeomographics 
right outer Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT Jobtitle, salary
FROM SQLTutorial.dbo.EmployeeDeomographics 
inner Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE Jobtitle = 'Salesman'

SELECT Jobtitle, AVG(salary)
FROM SQLTutorial.dbo.EmployeeDeomographics 
inner Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE Jobtitle = 'Salesman'
Group By JobTitle