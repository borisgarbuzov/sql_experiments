use db1
select * from table_1
select * from table_2;

--SET IDENTITY_INSERT table_1 off
insert into table_1 
select col1 from table_2

select * from table_1

delete from table_1
where mykey >4

select * from table_1