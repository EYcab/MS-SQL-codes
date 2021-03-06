
--Generate an XML query execution plan

--SET STATISTICS XML ON will produce an actual plan
SET STATISTICS XML ON

select p.LastName, p.FirstName, pp.PhoneNumber
from Person.Person p
join
Person.PersonPhone pp
on p.BusinessEntityID=pp.BusinessEntityID


SET STATISTICS XML OFF



--ESTIMATED
SET SHOWPLAN_XML ON
GO
select p.LastName, p.FirstName, pp.PhoneNumber
from Person.Person p
join
Person.PersonPhone pp
on p.BusinessEntityID=pp.BusinessEntityID

SET SHOWPLAN_XML OFF


--For a graphical execution plan

--FIRST YOU MUST COMMENT OUT THE SET COMMANDS IN 
--THE ABOVE CODE

--Right click anywhere here in the query window
--and choose...
--Display Estimated Executed Plan
--OR you can press CTRL-L

--OR

--Right click anywhere here in the query window
--and choose...
--Include Actual Executed Plan
--OR you can press CTRL-M

--then highlight one of the join queries
--and execute it...you will see an Execution Plan 
--tab in the result set window

--NOTE!
--You must toggle Include Actual Executed Plan off
--to make it stop generated an executed plan 

