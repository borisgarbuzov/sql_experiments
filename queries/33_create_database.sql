USE master
CREATE DATABASE SimpleTest
SELECT name, size, size*1.0/128 AS [Size in MBs]
FROM sys.master_files
WHERE name = N'SimpleTest';
drop database SimpleTest;


