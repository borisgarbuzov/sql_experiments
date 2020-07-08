use db1
select * from table_1
go
CREATE TRIGGER table_1_insert_trigger
ON table_1
AFTER INSERT
AS
select 'someone inserts into table_1'
go

insert into table_1(col1) values ('777')

drop trigger table_1_insert_trigger
