use db1;

CREATE TABLE doc_exa ( column_a INT Not Null) ;
GO
--ALTER TABLE doc_exa ADD column_b VARCHAR(20) default 'xxx' ;


GO
select * from doc_exa
--insert into doc_exa (column_a)
--values ()
--select * from doc_exa
--EXEC sp_help doc_exa ;

--alter table doc_exa
--alter column column_a INT not null

ALTER TABLE doc_exa
ADD CONSTRAINT yoyo PRIMARY KEY (column_a);

EXEC sp_help doc_exa;
GO
--alter TABLE doc_exa ( column_a INT) ;
--alter table doc_exa (drop constraint UQ__doc_exa__3A81B327 unique (column_a);
ALTER TABLE doc_exa
drop CONSTRAINT yoyo ;
select 'after dropping yoyo'
EXEC sp_help doc_exa;

DROP TABLE doc_exa ;
GO
