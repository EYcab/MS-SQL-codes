--Simple Trigger Example

--Create a simple table to insert data into
--We will create an insert trigger on the table
CREATE TABLE TrigEx
(
 LastName varchar(50),
 FirstName varchar(50)
)
--the above and the below procedures must be implemented seperately in order


--Create an INSERT trigger
--Note that this is an AFTER trigger
CREATE TRIGGER Notify
ON TrigEx
FOR INSERT
As
PRINT 'ATTENTION!!!!!'
PRINT 'A row was inserted into the TrigEx table...'  --This will appear on the Messages tab
PRINT 'The inserted data was...'                     --This will appear on the Messages tab
select 'The inserted data was: ', * from inserted
select * from TrigEx

--Let's insert a couple of rows into the table
--and see the results of the trigger
INSERT INTO TrigEx
VALUES
('James','Jack'),('James','Frank'),('Long','Mark')










--Now let's add a UPDATE trigger to the TrigEx table
CREATE TRIGGER ModEx
ON TrigEx
FOR UPDATE
As
PRINT 'ATTENTION!!!!!'                              --This will appear on the Messages tab
PRINT 'A row was modified in the TrigEx table...'   --This will appear on the Messages tab

select 'DELETED: The original data was: ', * from deleted
select 'INSERTED: The new data is: ', * from inserted
select * from TrigEx

--Now, let's update a record in TrigEx and test the 
UPDATE TrigEx
SET LastName='Longly'
WHERE FirstName='Mark' and LastName='Long'


