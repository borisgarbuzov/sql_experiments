create function f
returns table
begin
return select * from db1.table_1
end
go
select f()


