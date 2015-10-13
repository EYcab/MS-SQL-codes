--the synonym could be used as an abstraction
--especially useful when the db.name is changed and thus
--we could try to use synonym to control our db.name regardless of name
--changed
SELECT * into Test100
from HumanResources.Employee

Create SYNONYM MLtable
for dbo.Test100

select * from Test100
select * from MLtable

--below code is the change made
EXEC sp_rename 'Test100','Test200';
--

--here is your code operation to point your query table object name back 
--by using synonyms

Drop Synonym MLtable;

Create synonym MLtable
for dbo.test200;