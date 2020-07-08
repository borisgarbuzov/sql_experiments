

SELECT ROW(t1.col1, 42) FROM t1;
SELECT t1.col1, 42 FROM t1;

select * from t1;

CREATE TABLE mytable(f1 int, f2 float, f3 text);

CREATE FUNCTION getf1(mytable) RETURNS int AS 'SELECT $1.f1' LANGUAGE SQL;

CREATE FUNCTION getf1(t1) RETURNS varchar AS 'SELECT $1.col1' LANGUAGE SQL;

--CREATE FUNCTION getf1($variable_table) RETURNS varchar AS 'SELECT $1.col1' LANGUAGE SQL;

SELECT ROW(t1.*)  IS  NULL FROM t1;

SELECT CASE WHEN col1 = 'a' THEN col1 ELSE 'new' END FROM t1;

SELECT CASE WHEN col1 = 'a'
            THEN 'anew'
       END
    FROM t1;

   
   
select col1 || ' suffix' from t1;   
   

 SELECT CASE
        WHEN false THEN UPPER(col1 || ' ' || 'suffix1')
        ELSE LOWER(col1 || ' ' || 'suffix2')
        end
from t1;

alter function a() returns int4 as $$select 1$$ language sql;
select a();
ALTER FUNCTION b() RENAME TO c;
select c();
select sqrt(2);
--ALTER FUNCTION sqrt(float) RENAME TO c;
SELECT max(col1 ORDER BY col1 DESC) FROM t1;
SELECT max(col1) FROM t1;
SELECT max(col1) FROM t1 group by col1;
SELECT col1 FROM t1 group by col1;

-- SELECT percentile_cont(0.5) WITHIN GROUP (order by col1) FROM t1;
--SELECT max(col1) WITHIN GROUP (order by col1) FROM t1;
select generate_series(1,10);

SELECT
    count(*) AS unfiltered,
    count(*) FILTER (WHERE i < 5) AS filtered
FROM generate_series(1,10) AS s(i);

select CAST ( 1.1 AS float );
select CAST ( 0 AS boolean );


SELECT ARRAY[1,2,3+4];

create table t3 as SELECT ARRAY[1,2.5,3+4];
select * from t3;
create table t4 (c1 float);
--insert into t4 (select (double) array from t3);
--alter table t3 rename column [array] to 'array1';
--insert into t3 (array) values (1);
SELECT ARRAY[1,2,22.7]::integer[];

SELECT ARRAY[ARRAY[1,2], ARRAY[3,4]];
SELECT ARRAY[ARRAY[1,2], ARRAY[3, null]];
--SELECT ARRAY[ARRAY[1,2], null];

CREATE TABLE arr(f1 int[], f2 int[]);

INSERT INTO arr VALUES (ARRAY[[1,2],[3,4]], ARRAY[[5,6],[7,8]]);
INSERT INTO arr VALUES (ARRAY[[1],[3]], ARRAY[[5,6],[7,8]]);
--INSERT INTO arr VALUES (ARRAY[[1],[3,2]], ARRAY[[5,6],[7,8]]);
delete from arr where f1 = ARRAY[[1],[3]];

-- cast string and merge two arrays
SELECT ARRAY[f1, f2, '{{9,10},{11,12}}'::int[]] FROM arr;

SELECT ARRAY(SELECT oid FROM pg_proc WHERE proname LIKE 'bytea%');
SELECT * FROM pg_proc;

select * from t1;
select array(select * from t1);

SELECT ROW(t1.*, 42) FROM t1;
SELECT ROW(t1.col1, t1.col1, 42) FROM t1;
SELECT (t1.col1, t1.col1, 42) FROM t1;
SELECT t1.col1, t1.col1, 42 FROM t1;
-- create table t5 as (SELECT t1.col1, t1.col1, 42 FROM t1);
create table t5 as (SELECT t1.col1, t1.col1 as col2, 42 FROM t1);
select * from t5;
select col1, col2 from t5;
--select col1, col2, ?column? from t5;
select * from information_schema."columns" c where table_name = N't5';

--select t5.$1 from t5;
--select t5[1] from t5;




























