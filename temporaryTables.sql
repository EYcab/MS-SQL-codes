--temporary table is in tempdb under system Databases
create table ##mark
(LName varchar(40))

select * from #mark


drop table ##mark
