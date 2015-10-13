use AdventureWorks2012
--THIS helps fetch an appointed ordered rows like [5,10]


select distinct FirstName,LastName
from Person.Person
Order by LastName ASC, FirstName ASC
OFFSET 5 ROWS FETCH NEXT 10 ROWS ONLY

--the below operation @offset and @fetch are variables and functions
--where could contain arrays.

select distinct FirstName,LastName
from Person.Person
Order by LastName ASC, FirstName ASC
OFFSET @offset ROWS FETCH NEXT @fetch ROWS ONLY