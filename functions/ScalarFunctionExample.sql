
--Let's create a simple scalar function

--Let's look at the table we will pull data from
select * from sales.salesorderheader

--Here are the two columns we will combine
select TaxAmt, Freight from sales.SalesOrderHeader

--Let's create a function to add TaxAmt and Freight together
--we could check the data types via visiting Columns folder 
--in sales.SalesOrderHeader in AdventureWorks2012 in the
--object explorer
CREATE FUNCTION TandF
(
	@tax money,
	@freight money
)
RETURNS INT
AS
BEGIN
	RETURN @tax + @freight
END

--Now, let's use our new function
select SalesOrderID, dbo.TandF(TaxAmt,Freight) 'Tax/Freight'
from Sales.SalesOrderHeader

--NOTE about performance!!!!
--A scalar UDF like our TandF function will run once for every
--row returned in the result set...