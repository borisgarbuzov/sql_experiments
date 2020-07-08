CREATE TABLE TestTable
(MessageID int IDENTITY,
Message varchar(200))
GO
INSERT
INTO TestTable
VALUES('This is a test message.')

select * from testTable

GRANT SELECT ON dbo.TestTable TO FredUser
EXECUTE AS USER = 'FredUser'
select * from testTable

GRANT INSERT
ON OBJECT::dbo.TestTable
TO FredUser



