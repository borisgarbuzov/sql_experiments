use db1;
go
--SELECT * FROM dbo.TestTable
--alter SCHEMA my_schema

--create LOGIN name1 WITH PASSWORD = 'aaa' 
go
--CREATE SCHEMA schema2 AUTHORIZATION dbo
go
ALTER USER
guest WITH DEFAULT_SCHEMA = TestSchema

ALTER AUTHORIZATION
ON SCHEMA::schema2
TO guest

--DROP SCHEMA TestSchema

GRANT ALL
ON table_1
TO dbo
WITH GRANT OPTION

CREATE DATABASE Chapter18
GO
USE Chapter18
GO
CREATE LOGIN FredLogin
WITH PASSWORD = ‘abc123’
GO
CREATE USER FredUser
FOR LOGIN FredLogin









