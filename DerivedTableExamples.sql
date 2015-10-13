
--Simple example of a derived table
select * from
  (select LastName, FirstName from Person.Person) as DPerson
where LastName like 'I%'

--Another derived table example
--NOTE! This example demonstrates the potential for creating
--performance issues using derived tables...
--The INames derived table contains all columns, yet 
--only FirstName, LastName are used
select LastName, FirstName
from
	(select * from Person.Person
	where LastName like 'I%') as INames
where LastName like 'In%'

--A very efficient way to do joins 
--Joining to a derived table
select p.FirstName + ' ' + p.Lastname Salesperson, 
soh.Subtotal, soh.Freight, soh.TotalDue
from Person.Person p
JOIN
  (select SalesPersonID, Subtotal, Freight, TotalDue from Sales.SalesOrderHeader) as soh  --This line creates the soh derived table
ON
p.BusinessEntityID=soh.SalesPersonID
order by soh.TotalDue desc




