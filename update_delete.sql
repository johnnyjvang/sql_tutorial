/*
Topic: Updating / Deleting Data 
*/


SElect *
FROM SQLTutorial.dbo.EmployeeDeomographics


UPDATE SQLTutorial.dbo.EmployeeDeomographics
-- this will reset all employeeID to 1012, if nothing is set 
set employeeID = 1012
where firstname = 'Holly' and lastname = 'Flax'



UPDATE SQLTutorial.dbo.EmployeeDeomographics
-- change the age and gender of holly flax 
set age = 31, gender='female'
where firstname = 'Holly' and lastname = 'Flax'



-- DELETE STATEMENT / no where to reverse a delete statement 
-- trick is to set this up as a select statement first to ensure you know whats being deleted 
Delete from SQLTutorial.dbo.EmployeeDeomographics
where EmployeeID = 1005 

SElect *
FROM SQLTutorial.dbo.EmployeeDeomographics