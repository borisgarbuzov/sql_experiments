SELECT  col2 , SUM (mykey)+ count (col1)+ count (col2)
FROM dbo.jj
WHERE col1 LIKE '[MS]%'

group by col2
order by col2 desc