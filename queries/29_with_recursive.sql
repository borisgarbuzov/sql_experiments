use db1
select * from table_1
select * from table_2;
with temptable (col1) as
(
select 1
union all 
select * from temptable
)
select * from temptable 
option (maxrecursion 3) 
