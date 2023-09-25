/*
Group by, Order By
*/

-- not text sensitive, can use all lowercase if wanted, or mix match 
Select GENDER, count(gEnDer)
FROM employeedeomographics
GROUP BY Gender