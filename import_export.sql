--COPY (SELECT * FROM customers) TO '/home/developer/file.csv';
SELECT * from customers

--COPY [Table Name](Optional Columns)
--FROM '[Absolute Path to File]'
--DELIMITER '[Delimiter Character]' CSV [HEADER];


================
COPY [Table Name](Optional Columns)
FROM '[Absolute Path to File]'
DELIMITER '[Delimiter Character]' CSV [HEADER];
