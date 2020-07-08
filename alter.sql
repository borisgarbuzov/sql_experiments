ALTER TABLE t1 ADD COLUMN col2 text;
ALTER TABLE t1 ADD COLUMN description text CHECK (description <> '');
select * from t1;
select * from t1 where description <> '';
select * from t1 where description = '';
select * from t1 where description = NULL;
select * from t1 where description <> NULL;
select * from t1 where description is NULL;
select * from t1 where description notnull ;
select * from t1 where not(description is null);
select * from t1 where description is not null ;

ALTER TABLE t1 DROP COLUMN description;
ALTER TABLE t1 DROP COLUMN description cascade;

ALTER TABLE t1 ADD CHECK (col1 <> '');
insert into t1 values ('', '');
ALTER TABLE t1 ADD CONSTRAINT some_name UNIQUE (col1);
delete from t1 where col1 = 'a';
ALTER TABLE t1 drop CONSTRAINT some_name;

ALTER TABLE t1 ALTER COLUMN col1 SET NOT NULL;
ALTER TABLE t1 ALTER COLUMN col1 SET DEFAULT 7.77;
insert into t1 values ('abc', NULL);
insert into t1 (col2) values ('a');
ALTER TABLE t1 ALTER COLUMN col1 DROP DEFAULT;
ALTER TABLE t1 ALTER COLUMN col1 TYPE varchar;

ALTER TABLE t1 RENAME COLUMN col2 TO col2a;
ALTER TABLE t1 RENAME TO t1a;
ALTER TABLE t1a RENAME TO t1;
-- ALTER TABLE t1 RENAME TO t1;





