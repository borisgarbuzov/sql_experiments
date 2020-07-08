use northwind
declare @zhopa nvarchar(10)
exec boris_proc 1, 'aaa', @zhopa output
print @zhopa

declare @companyZhopa varchar(30)
select @companyZhopa = CompanyName from customers
print @companyZhopa