

select TOP 3 FirstName, LastName from Person.Person

--First, let's use FOR XML RAW
--Notice that every row in the result set is 
--generated as a single element named row
--and columns are generated as attributes
select TOP 3 FirstName, LastName from Person.Person
FOR XML RAW

--We can rename the tag name for each row and
--request make the output more element centric
--by adding ('Employee'), ELEMENTS
select TOP 3 FirstName, LastName from Person.Person
FOR XML RAW  ('Employee'), ELEMENTS


--We can add a root element as well...
select TOP 3 FirstName, LastName from Person.Person
FOR XML RAW  ('Employee'), ELEMENTS, ROOT ('Employees')


