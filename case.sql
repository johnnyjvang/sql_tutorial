/*
Today Topic: Case Statement 
*/



Select FirstName, LastNAme, Age
FROM SQLTutorial.dbo.EmployeeDeomographics
Where Age is NOT NULL
Order by Age

Select FirstName, LastNAme, Age,
CASE	
	WHEN Age > 30 THEN 'OLD'
	WHEN Age Between 27 and 30 THEN 'YOUNG'
	ELSE 'Baby'
END
FROM SQLTutorial.dbo.EmployeeDeomographics
Where Age is NOT NULL
Order by Age

SElect firstname, lastname, jobtitle, salary,
CASE 
	when jobtitle = 'Salesman' then salary + (Salary * .10)
	when jobtitle = 'Accountant' then salary + (Salary *.05)
	when jobtitle = 'HR' then salary + (Salary * .000001)
	else salary + (Salary * .03)
END as SalaryAfterRaise
FROM SQLTutorial.dbo.EmployeeDeomographics
JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDeomographics.EmployeeID = EmployeeSalary.EmployeeID

