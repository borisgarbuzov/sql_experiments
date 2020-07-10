--money


-- https://postgrespro.ru/docs/postgrespro/12/datatype-numeric
SELECT '12.34'::float8::numeric::money;
SELECT '12.34'::numeric::money;



SELECT '52093.89'::money::numeric::float8;
SELECT '52093.89'::money::numeric::real;

SELECT '52093.89'::money/5;
SELECT (SELECT '52093.89'::money/5)*5

create table two_col_table
(
char10col char(10),
var_char10col varchar(10)
);
drop table two_col_table ;
insert into two_col_table values ('a', 'a');
select * from two_col_table ;
select substring(char10col from 5 for 1) from two_col_table ;
select substring(var_char10col from 5 for 1) from two_col_table ;

CREATE TABLE test1 (a character(4));
INSERT INTO test1 VALUES ('ok');
SELECT a, char_length(a) FROM test1; -- (1)


CREATE TABLE test2 (b varchar(5));
INSERT INTO test2 VALUES ('ok');
INSERT INTO test2 VALUES ('good      ');
INSERT INTO test2 VALUES ('too long');
-- ОШИБКА:  значение не умещается в тип character varying(5)
INSERT INTO test2 VALUES ('too long'::varchar(5)); -- явное усечение
SELECT b, char_length(b) FROM test2;

select column_name,data_type 
from information_schema.columns 
where table_name = 'test2';

create table type_table
(
name_col name,
char_col char 
);

insert into type_table values 
(
'0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789',
'0'
);



--sybbols

SELECT 'a '::CHAR(2) collate "C" < E'a\n'::CHAR(2)

--binary
SELECT '\xDEADBEEF';

SELECT '\000'::bytea;
SELECT ''''::bytea;
SELECT '\\'::bytea;
SELECT '\001'::bytea;
SELECT '\176'::bytea;
