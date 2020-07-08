USE db1
go
CREATE FUNCTION FindAveragePrice()
RETURNS money
WITH SCHEMABINDING
AS
BEGIN
RETURN (SELECT avg(mykey) FROM table_1)
END
go
select 'calling'
FindAveragePrice()

