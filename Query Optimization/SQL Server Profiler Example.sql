--SQL Server Profiler Example

select p.LastName, p.FirstName, pp.PhoneNumber
from Person.Person p
join
Person.PersonPhone pp
on p.BusinessEntityID=pp.BusinessEntityID

select * from Person.Person

select * from HumanResources.Employee