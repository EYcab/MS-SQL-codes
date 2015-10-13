--Let's look at the data we want to use in this example
select distinct TOP 5 FirstName, LastName from person.person
select  distinct TOP 5  PhoneNumber from person.personphone 

--Let's use SELECT INTO to create and load to tables...
--the PersonCross table and the PhoneCross table...
--both tables have 5 rows each
select distinct TOP 5 FirstName, LastName INTO PersonCross from person.person
select  distinct TOP 5  PhoneNumber INTO PhoneCross from person.personphone 

--Here's our two new tables with 5 rows each
select * from personcross
select * from phonecross

--Now, let's do a CROSS JOIN on PersonCross and PhoneCross
select p.FirstName, p.LastName, ph.PhoneNumber
from
personcross p
cross join
phonecross ph
