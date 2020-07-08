

select * from t1;
insert into t1 values ('a', 'b');
insert into t1 (col1) values ('a1');

create table defaultOne 
(
col1 varchar default 'my default string 1',
col2 int default 1
);
drop table defaultOne;

insert into defaultOne (col1) values ('a1');
select * from defaultOne;

create table autoincrementTable
(
col1 varchar,
myAutoincrement serial
);
insert into autoincrementTable (col1) values ('a1');
INSERT INTO autoincrementTable DEFAULT VALUES;
select * from autoincrementTable;
insert into autoincrementTable (col1) values ('a2'), ('a3');


INSERT INTO defaultOne DEFAULT VALUES;
select * from defaultOne;

CREATE TABLE t1a AS 
TABLE t1;
select * from t1a;

CREATE TABLE t2a AS 
TABLE t2
WITH NO DATA;
select * from t2a;





















