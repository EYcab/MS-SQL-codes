use AdventureWorks2012
--very useful to check the outliers
--use to get a collection excluding "the both portion
select BusinessEntityID from Person.Person
except
select BusinessEntityID from HumanResources.Employee
ORDER BY BusinessEntityID

--use to find the collection of both
select BusinessEntityID from Person.Person
intersect
select BusinessEntityID from HumanResources.Employee
ORDER BY BusinessEntityID
