--use northwind
/*
begin transaction
insert into customers(customerid, CompanyName)
values
(19, 'my fucking company')
if @@ERROR=50000
begin
print 'pisun' 
rollback transaction
end  
else 
begin
print 'jopa' 
commit transaction
end
*/
use master
--if EXISTS(SELECT * FROM DELETED) print 'y' else print 'n'

SELECT *
FROM sys.objects