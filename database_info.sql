--Get All database from the server
SELECT * FROM pg_database;

--Get all tables in current database
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;

--Get all tables on server
SELECT tablename FROM pg_catalog.pg_tables;

--Previous analog to count all tables on server
SELECT COUNT(tablename) FROM pg_catalog.pg_tables;

--Get all colum name in table
SELECT column_name,data_type 
FROM information_schema.columns 
WHERE table_name = 'customers';

SELECT distinct data_type 
FROM information_schema.columns 
order by data_type;

SELECT distinct * FROM pg_type ;





--informational functions https://www.postgresql.org/docs/9.0/functions-info.html