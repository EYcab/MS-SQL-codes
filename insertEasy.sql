use AdventureWorks2012
select * from Production.UnitMeasure

insert into Production.UnitMeasure
(UnitMeasureCode,Name,ModifiedDate)
VALUES
('FT5','Feet5','20080414'),('FT7','Feet7','20080414')

--Multiple rows of data can be added using a single
--INSERT statement
		

--NOTE!
--If you try to execute the above INSERT statement more
--than once, you will receive an error message because
--you are attempting to INSERT identical data into the table
--and this violates the PRIMARY KEY


--The INSERT SELECT option
--Uses the results of a SELECT statement as the source
--for data to be inserted

--Let's create an empty table to insert data into
CREATE TABLE dbo.EmployeeSales
( DataSource varchar(20) NOT NULL,
BusinessEntityID varchar(11) NOT NULL,
LastName varchar(40) NOT NULL,
SalesDollars money NOT NULL
);

--Highlight the above query and execute it

--Take a look at the empty table
select * from EmployeeSales

--Now, let's perform an INSERT SELECT
INSERT INTO dbo.EmployeeSales
SELECT 'SELECT', sp.BusinessEntityID, c.LastName, sp.SalesYTD
FROM Sales.SalesPerson AS sp
INNER JOIN Person.Person AS c
ON sp.BusinessEntityID = c.BusinessEntityID
WHERE sp.BusinessEntityID LIKE '2%'
ORDER BY sp.BusinessEntityID, c.LastName;

--Now, take a look at the table...
--It has data!
select * from EmployeeSales

--If you have a stored procedure that returns data
--you can use the results of the stored procedure 
--in the same manner as INSERT INTO
--
--NOTE! You must have a stored procedure named
--dbo.uspGetEmployeeSales to execute this INSERT
--We'll look at stored procedures later in the course
--You can come back here later in the course and
--create the stored procedure required OR see
--the code to create the stored procedure after this
--INSERT INTO code
INSERT INTO EmployeeSales
EXEC dbo.uspGetEmployeeSales;


--Here is the code to create the stored procedure used
--in the INSERT EXEC above
--Highlight the code below and execute...
--Then go back up a few lines and highlight and 
--execute the above INSERT EXEC statements
CREATE PROCEDURE dbo.uspGetEmployeeSales
AS
SET NOCOUNT ON;
SELECT 'PROCEDURE', sp.BusinessEntityID, c.LastName,
sp.SalesYTD
FROM Sales.SalesPerson AS sp
INNER JOIN Person.Person AS c
ON sp.BusinessEntityID = c.BusinessEntityID
WHERE sp.BusinessEntityID LIKE '2%'
ORDER BY sp.BusinessEntityID, c.LastName;
