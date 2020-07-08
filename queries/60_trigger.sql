use northwind
go
alter TRIGGER trigger1
ON customers
for INSERT
AS
print 'kaka'

RAISERROR (N'This is message %s %d.', -- Message text.
           16, -- Severity,
           1, -- State,
           N'number', -- First argument.
           5); -- Second argument.


