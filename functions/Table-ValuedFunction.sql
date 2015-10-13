--Let's create a table-valued function that
--will return a list of names and phone numbers
--from the Person and PersonPhone tables
CREATE FUNCTION dbo.PhoneNbrs()
RETURNS TABLE
AS
RETURN select p.FirstName + ' ' + p.LastName 'Name', pp.PhoneNumber 
from 
person.person p
join
person.personphone pp
on p.BusinessEntityID=pp.BusinessEntityID


--Now let's use our new function
select * from PhoneNbrs()
