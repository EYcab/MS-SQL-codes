
--We want to get the total number of rows
--in a table
SELECT COUNT(*) FROM Person.Person

--This looks good...but it will not run
DECLARE @tbl varchar(50)
SET @tbl='Person.Person'
SELECT COUNT(*) FROM @tbl

--Dynamic SQL to the rescue
DECLARE @tbl varchar(50)
SET @tbl='Person.Person'
EXEC ('SELECT COUNT(*) FROM ' + @tbl)



--Let's build a stored procedure to do this
CREATE PROC CountRows
@table varchar(50)
as
EXEC ('SELECT COUNT(*) FROM ' + @table)

EXEC CountRows 'HumanResources.Department'

