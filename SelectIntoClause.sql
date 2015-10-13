--especially efficient in code-testing 


use AdventureWorks2012

select Name,CountryRegionCode,[Group],SalesYTD
INTO SalesTestTable
from sales.SalesTerritory

select * from SalesTestTable