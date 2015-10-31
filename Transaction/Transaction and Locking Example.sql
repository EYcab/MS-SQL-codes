--Simple transaction and locking example

--Let's begin a transaction
--And perform an update...a bad update!
BEGIN TRAN ML
UPDATE Person.Person
SET LastName='Long'

--Oh no! All LastNames were changed...
select * from Person.Person

--Let's ROLLBACK our transaction and undo our UPDATE 
ROLLBACK TRAN ML
COMMIT TRAN ML

--The orginal data is back
select * from Person.Person



---------------------------------
--look at locking

--Let's start a transaction in this connection
BEGIN TRAN MTL
UPDATE Person.Person
SET FirstName='Jack'
WHERE FirstName='Terri' and LastName='Duffy'

--upon here,it is still totally locked,so other users
-- are black from updating the database

--NOTE: WE LACK THE "commit tran MTL" 
--for implicit unlock




--When you have executed the two lines above...
--Click the New Query button (this will create a new connection)
--IN THE NEW QUERY WINDOW...type this
SELECT * from Person.Person
WHERE BusinessEntityID=2
--Note that the select statement will not complete...it just sits there
--It is being blocked by the UPDATE statement

--Return to the first query window and execute this...
COMMIT TRANSACTION MTL



--When you return to the UPDATE query window,
--the command will be completed...
--It executed as soon as you removed the lock
--by committing the select transaction named MTL

commit tran MTL


