use db1
select * from table_1
select * from table_2;

--SET IDENTITY_INSERT table_1 off
insert into table_1 
select col1 from table_2


select * from table_1

delete from table_1
where mykey >4

BEGIN TRANSACTION
update table_1 set
col1= 'aaa'
where col1 = 'bbb'


select * from table_1
begin transaction
update table_1 set
col1 = 'ddd'
where col1 = 'sss'
select * from table_1
rollback transaction
select * from table_1

