delete from t1 where true;

select * from t1;

copy (select * from t1) to 'G:\mine\my_text\lab\sql\scripts\data\t1aws.csv';
copy t1 from 'G:\mine\my_text\lab\sql\scripts\data\t1aws.csv';
-- column names as optional
copy t1 (c1) from 'G:\mine\my_text\lab\sql\scripts\data\t1aws.csv';

truncate table t1;

UPDATE t1 SET c1 = concat(c1, 'suffix')
  WHERE c1 <> 'abc'
  RETURNING c1 AS new_c1;
  
DELETE FROM t1
  WHERE c1 like 'true%'
  RETURNING *; 
  
SELECT random();
-- uniform [0,1]

select * from t1;
-- select * from t2;


