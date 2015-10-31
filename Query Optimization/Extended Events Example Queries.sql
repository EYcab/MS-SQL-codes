
--SQL Server Extended Events Query

select p.LastName, p.FirstName, pp.PhoneNumber
from Person.Person p
join
Person.PersonPhone pp
on p.BusinessEntityID=pp.BusinessEntityID