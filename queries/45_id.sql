use db1
select * from table_1
go
select OBJECT_ID('dbo.table_1');
go
CREATE INDEX my_index
ON table_1 (col1)
INCLUDE (mykey)

GO
ALTER INDEX ALL
ON dbo.table_1
REBUILD
go
ALTER INDEX my_index ON table_1
DISABLE
go

drop index my_index
on table_1