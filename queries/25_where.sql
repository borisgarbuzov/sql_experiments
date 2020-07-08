use db1
select * from dbo.jj
where mykey>=(select max(mykey) from jj)-1


