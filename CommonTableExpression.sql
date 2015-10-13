--simple example expression
select * from 
(select LastName, FirstName from Person.Person) as DPerson 
where LastName like 'I%'

--CTE equivalently
--the with .. AS (.....) is like a variable declaration
with DPerson(lastName, FirstName)
As
(select LastName, FirstName from Person.Person)

select LastName, FirstName from Person.Person
where LastName like 'I%'


-------------------------
create table #ml
(LName varchar(40))

Look in tempdb


drop table #ml





