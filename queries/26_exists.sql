use db1
select * from table_1
select * from table_2

select col1, mykey from table_1
where (
exists( 
select * from table_2
where table_2.mykey = table_1.mykey)
)

select 'hi' 
from table_1
where (
exists( 
select * from table_2
where table_2.mykey = table_1.mykey)
)

select distinct 'exists sss in col1' from table_1
where col1 = 'sss'



