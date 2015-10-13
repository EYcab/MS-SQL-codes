-- NOTE! Remember...you can execute a single query by using the mouse 
-- to highlight only the query you want to execute and then clicking
-- on Execute (or press F5)

-- This TSQL command will tell you what entities are using
-- the Mark table we created earlier in the course
SELECT referencing_schema_name, referencing_entity_name, referencing_id, referencing_class_desc, is_caller_dependent
FROM sys.dm_sql_referencing_entities ('dbo.Mark', 'OBJECT');

-- Execute this code to create a view on the Mark table
create view m


DROP TABLE Mark
as
select firstname from Mark

-- Execute the dm_sql_referencing_entities code again to see the results
SELECT referencing_schema_name, referencing_entity_name, referencing_id, referencing_class_desc, is_caller_dependent
FROM sys.dm_sql_referencing_entities ('dbo.Mark', 'OBJECT');