select * from public.t1;
insert into t1 values ('b');

COPY (SELECT * FROM t1) TO 'G:\mine\my_text\lab\sql\scripts\data\file.csv'
with csv header;
SELECT * from customers

delete from t1 where True;

COPY t1 
FROM 'G:\mine\my_text\lab\sql\scripts\data\file.csv'
DELIMITER ',' CSV header ;

select * from t1;

truncate t1;

UPDATE t1 SET c1  = '10' WHERE True;
UPDATE t1 SET c1  = 100 WHERE True;
UPDATE t1 SET c1  = True WHERE True;

-- error
declare @myvar varchar(5);
SET @myvar = 5;
UPDATE t1 SET c1  = concat(c1,  ' ', user_id) WHERE True;
alter table t1
alter  column
c1   TYPE  varchar(100)
;




