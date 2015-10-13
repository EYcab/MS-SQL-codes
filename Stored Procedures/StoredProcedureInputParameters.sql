--Adding input parameters to a stored procedure

--Notice that we add a variable declaration
--BEFORE the AS keyword...this becomes an input variable
--and if it is not included when GetPhone is called,
--the default value of 'Abel' is called
ALTER PROC GetPhone
@lastname varchar(50)='Abel'  --Note that the default value is optional
AS
select p.LastName + ', ' + p.FirstName Name, pp.PhoneNumber
from person.person p
join
person.PersonPhone pp
on 
p.BusinessEntityID=pp.BusinessEntityID
--where LastName=@lastname
where LastName LIKE @lastname


--Hightlight 'GetPhone' and include the input parameter, then execute 
--The result of the code in the stored procedure will be returned
GetPhone 'Jones'
--GetPhone 'Ab%'



--Multiple input parameters
--What about more than one input parameter?
ALTER PROC GetPhone
@lastname varchar(50),
@firstname varchar(50)
AS
select p.LastName + ', ' + p.FirstName Name, pp.PhoneNumber
from person.person p
join
person.PersonPhone pp
on 
p.BusinessEntityID=pp.BusinessEntityID
where LastName=@lastname and FirstName=@firstname


--Now, you must pass two input parameter values when calling
--the stored procedure
GetPhone 'Abel','Catherine'