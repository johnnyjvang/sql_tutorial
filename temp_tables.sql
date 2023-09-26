/*
Topic: Temp Tables
*/

-- can be used multiple times, unlike a CTE which can only be used once 

-- setup a temp table just like with "Create" but we use "#" in front of the table name 
Create table #temp_employee2 (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select * From #temp_employee2

Insert into #temp_employee2 values (
'1001', 'HR', '45000'
)

-- you can duplicate another table to the temp table 
-- insert all columns/values from employeesalary into a temp table 
Insert into #temp_employee2 
SELECT * From SQLTutorial..EmployeeSalary

Select * From #temp_employee2

-- use this to drop a temp table if already exist 
-- if you try to create a temp table with the same name, it will error and says it already exist 
DROP TABLE IF EXISTS #temp_employee3
Create table #temp_employee3 (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

-- good idea to take a large table to only use a subset/part of the table 
Insert into #temp_employee3
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM SQLTutorial..EmployeeDeomographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select * 
From #temp_employee3

SELECT AvgAge * AvgSalary
from #temp_employee3