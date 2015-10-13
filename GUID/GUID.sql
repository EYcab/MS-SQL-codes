--A Trigger can be ENABLED on a table using ENABLE TRIGGER or ALTER TABLE
CREATE Table UsingGUIDs
(
ID uniqueidentifier,
lastName varchar(40),
FirstName varchar(40)
)

INSERT INTO UsingGUIDs
VALUES
(NEWID(),'Long','Mark'),(NEWID(),'Jones','Frank')
--Global unique Identifier

select * from UsingGUIDs


--############################
CREATE Table DefaultGUIDS
(
ID uniqueidentifier DEFAULT NEWID(),
lastName varchar(40),
FirstName varchar(40)
)

INSERT INTO DefaultGUIDS
(lastName,FirstName)
VALUES
('Smith','John')

select * from DefaultGUIDS


--##########################################
CREATE Table SeqGUIDS
(
ID uniqueidentifier DEFAULT NEWSEQUENTIALID(),
lastName varchar(40),
FirstName varchar(40)
)

INSERT INTO SeqGUIDS
(lastName,FirstName)
VALUES
('Smith','John'),('James','Bond'),('Human','Big')

select * from SeqGUIDS