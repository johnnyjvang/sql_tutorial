/*
Where Statement
=,<>,<,>,and,or,like,null,not null, in
*/


SELECT *
FROM EmployeeDeomographics
WHERE FirstName <> 'Jim'

-- find out people who has an 's' in their last name 
-- % is a wild card to find string variables, use with 'like'
SELECT *
FROM EmployeeDeomographics
WHERE LastName LIKE '%S%'

-- find someone with last name starting with s, and has an "o" somewhere in between 
SELECT *
FROM EmployeeDeomographics
WHERE LastName LIKE 'S%o%'