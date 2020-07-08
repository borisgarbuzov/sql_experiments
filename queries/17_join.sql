--USE db1
select * 
from jj as a 
inner join table_1 as b
on a.mykey = b.mykey 
where jj.mykey = 3
