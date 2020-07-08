--USE master;

--Delete the TestData database if it exists.
IF EXISTS(SELECT * from sys.databases WHERE name='TestData')
BEGIN
    DROP DATABASE TestData;
END

--Create a new database called TestData.
CREATE DATABASE TestData;
USE TestData
CREATE TABLE dbo.Products
   (ProductID int PRIMARY KEY NOT NULL,
    ProductName varchar(25) NOT NULL,
    Price money NULL,
    ProductDescription text NULL)
GO
print 'I finished'