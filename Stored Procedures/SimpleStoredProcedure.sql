--A simple stored procedure

--Let's create the stored procedure
--Once you have all the code entered,
--highlight the code and execute
CREATE PROC GetPhone
AS
select p.LastName + ', ' + p.FirstName Name, pp.PhoneNumber
from person.person p
join
person.PersonPhone pp
on 
p.BusinessEntityID=pp.BusinessEntityID
where LastName='Abel'


--Hightlight 'GetPhone' and execute 
--The result of the code in the stored procedure will be returned
GetPhone