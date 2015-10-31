


select TOP 3 FirstName, LastName from Person.Person

--XML AUTO provides quick formatting, but not a lot
--of customization
select TOP 3 FirstName, LastName from Person.Person
FOR XML AUTO, ELEMENTS

--FOR XML RAW/AUTO can also create an XSD Schema for
--the result set
--Use the XMLSCHEMA('TestSchema') function
--It will produce inline XSD schema by default
--If you want a separate XSD document, use a where
--clause that will never evaluate to true
select TOP 3 FirstName, LastName from Person.Person
where 1=2
FOR XML AUTO, ELEMENTS,
XMLSCHEMA('TestSchema')







