use db1
select * from table_1

go
CREATE TRIGGER AuditInsertsUpdates
ON table_1
AFTER INSERT, UPDATE
AS
DECLARE @Operation char(6)
IF EXISTS (SELECT * FROM DELETED)
SET @OPERATION = 'UPDATE'
ELSE
SET @OPERATION = 'INSERT'
INSERT INTO dbo.table_1 (col1,col3,termDate)
SELECT  suser_name(), @Operation, GetDate()
go
insert into table_1 (col1) values ('dummy')
drop TRIGGER AuditInsertsUpdates

