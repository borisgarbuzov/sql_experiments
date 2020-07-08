use db1;

CREATE TABLE doc_exa ( column_a INT unique) ;
GO
--ALTER TABLE doc_exa ADD column_b VARCHAR(20) default 'xxx' ;
GO
select * from doc_exa
insert into doc_exa (column_a)
values (1)
select * from doc_exa
EXEC sp_help doc_exa ;
GO
--alter TABLE doc_exa ( column_a INT) ;
alter table doc_exa (drop constraint UQ__doc_exa__3A81B327 unique (column_a);
DROP TABLE doc_exa ;
GO
