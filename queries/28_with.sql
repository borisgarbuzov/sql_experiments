use db1
select * from table_1
select * from table_2;
with temptable (c1, c2) as
(
select 1, 2
union all 
select 3,4
union all 
select 3,4
)
select * from temptable 
