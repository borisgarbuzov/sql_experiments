

--drop database db1;
--create database db1;
--use db1;
CREATE TABLE dbo.merchandise 
(
	tovar_num int PRIMARY KEY NOT NULL ,
	tovar_name varchar(50) NOT NULL ,
     tovar_firm varchar(50) NOT NULL ,
     tovar_model varchar(50) NOT NULL ,
	price money,
	count int 
);



