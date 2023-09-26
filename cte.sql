/*
Topic: CTE - common table expression or with queries 
*/

-- CTE is almost like a temp table, can only be selected directly afterwards 
With cte_employee as 
(Select firstname, lastname, gender, salary, 
	COUNT(gender) over (partition by gender) as TotalGender, 
	avg(salary) over (partition by gender) as AvgSalary
FROM SQLTutorial..EmployeeDeomographics demo
join SQLTutorial..EmployeeSalary sal
	on demo.EmployeeID = sal.EmployeeID
where salary > '45000'
)
-- this statement must be put after the "with" statement 
Select *
from cte_employee

-- doing this will not work, the CTE_employee can only be used directly after
/*
Select *
from cte_employee
*/