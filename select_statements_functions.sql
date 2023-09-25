--Select Statement 
--Top, Distinct, Count, As, Max, Min, Avg


-- Selects all the columns for the table 
--Select *
--FROM EmployeeDeomographics

-- selects only the top 5 of all the columns 
Select top 5 *
FROM EmployeeDeomographics

-- Only selects unique employee ID's 
select distinct(EmployeeID)
from EmployeeDeomographics

-- selects and counts all last name only 
SELECT count(LastName) as Total_Last_Name
From EmployeeDeomographics


