create proc myproc
@a int
as
select @a
go
exec myproc @a = 5
drop proc myproc 