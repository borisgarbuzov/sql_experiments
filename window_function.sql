
SELECT * FROM t1;

select * from t1 group by col1 ;

select 
    ROW_NUMBER() OVER (partition by col1) AS row_number,
    col1
  FROM t1;
 
 SELECT 1+1, 3*2;


SELECT
    ROW_NUMBER() OVER (ORDER BY col1 ASC) AS row_number,
    col1
  FROM t1;
 
 select *
 from
 (SELECT
    ROW_NUMBER() OVER (ORDER BY col1 ASC) AS row_number,
    col1
  FROM t1) as numbered_table
 ;

 select *
 from
 (SELECT
    ROW_NUMBER() OVER (ORDER BY col1 ASC) AS row_number,
    col1
  FROM t1) as numbered_table
 where row_number < 3;

 select *
 from
 (SELECT
    ROW_NUMBER() OVER (ORDER BY col1 ASC) AS row_number,
    col1
  FROM t1) as numbered_table
 where row_number < 3;

-- Rank is jumping
 select *
 from
 (SELECT
    rank() OVER (ORDER BY col1 ASC) AS my_rank,
    col1
  FROM t1) as numbered_table
 where my_rank < 4;

SELECT * FROM T1 FETCH FIRST 2 ROWS only;

SELECT * FROM T1 order by col1 desc;

SELECT * FROM T1 order by col1 desc fETCH FIRST 2 ROWS only;


SELECT * FROM T ORDER BY acolumn DESC OFFSET 0 ROWS FETCH FIRST 10 ROWS only







 
 
 



