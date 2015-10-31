


--FOR XML PATH provides total control of the XML
--that is generated
--NOTE! in PATH mode, column names and aliases serve
--as XPath expressions (which define the path to the
--element in the generated XML)
select TOP 3 FirstName, LastName from Person.Person
where suffix is not null
FOR XML PATH ('Employee'), ROOT('Employees')


--Now, lets add another column...BusinessEntityID
--And let's make the data in the BusinessEntityID column
--appear in the XML output as an attribute
select TOP 3 BusinessEntityID as [@id], FirstName, LastName from Person.Person
FOR XML PATH ('Employee'), ROOT('Employees')


--It's easy to manipulate hierarchy with FOR XML PATH
--This query adds and EmpName element that contains
--the FirstName and LastName columns
select TOP 3 FirstName "EmpName/First", LastName "EmpName/Last" 
from Person.Person
FOR XML PATH ('Employee'), ROOT('Employees')





