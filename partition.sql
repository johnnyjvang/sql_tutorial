/*
Topic: Partition By 
*/

-- parition takes a typical group by and adds it as a column 
-- below you can see to add a column of Total Gender that counts the total gender of female/male 
select firstname, lastname, gender, salary,
	count(gender) over (partition by gender) as TotalGender
From SQLTutorial..EmployeeDeomographics dem
JOIN SQLTutorial..EmployeeSalary sal
	on dem.EmployeeID = sal.EmployeeID

-- if you were to use group by, it would only show female/male with the total count 
-- total count for gender would be 1 for all of them, unless duplicates 
select firstname, lastname, gender, salary, count(gender) 
From SQLTutorial..EmployeeDeomographics dem
JOIN SQLTutorial..EmployeeSalary sal
	on dem.EmployeeID = sal.EmployeeID
Group by FirstName, LastName, Gender, Salary

-- typical group by by gender to show total count of each gender 
select gender, count(gender) 
From SQLTutorial..EmployeeDeomographics dem
JOIN SQLTutorial..EmployeeSalary sal
	on dem.EmployeeID = sal.EmployeeID
group by gender