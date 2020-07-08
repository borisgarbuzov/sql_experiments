use borisdatabase3;
--use master;
/*
CREATE TABLE Tovar 
(
	tovar_num int PRIMARY KEY NOT NULL ,
	tovar_name varchar(50) NOT NULL ,
     tovar_firm varchar(50) NOT NULL ,
     tovar_model varchar(50) NOT NULL ,
	price money,
	count int 
);
*/
ALTER DATABASE borisdatabase3
MODIFY NAME = borisdatabase3;
/*
ALTER DATABASE borisdatabase3
MODIFY FILE ( NAME = Edu_TSQL, NEWNAME = Edu_TSQL_newName );
*/
go
create DATABASE db1;
DROP DATABASE db1;
DECLARE @Datatype_Int INT = 2;
PRINT @Datatype_Int;
declare @x as int
set @x = @Datatype_Int + 5
PRINT @x;
DECLARE @Datatype_nChar VARCHAR(30) = 'This is nCharacter Datatype'
PRINT @Datatype_nChar
DECLARE @COURSE_ID AS INT;
declare @textvar varchar(10)
--use borisdatabase3;
--select * from borisdatabase3.Tovar
select @textvar = 'abc'
select @textvar = (select @Datatype_nChar)








