/* 
Today's Topic: Having Clause 
*/

-- this will error
/* 
An aggregate may not appear in the WHERE clause unless it is in a 
subquery contained in a HAVING clause or a select list, and the 
column being aggregated is an outer reference.
*/

SElect jobtitle, count(jobtitle)
FROM SQLTutorial.dbo.EmployeeDeomographics
JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID
where count(jobtitle) > 1
group by jobtitle

-- correct syntax, must use having 
SElect jobtitle, count(jobtitle)
FROM SQLTutorial.dbo.EmployeeDeomographics
JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID
group by jobtitle
having count(jobtitle) > 1

SElect jobtitle, avg(salary)
FROM SQLTutorial.dbo.EmployeeDeomographics
JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID
group by jobtitle
having avg(salary) > 45000
order by avg(salary)

