use db1
select * from table_1;

ALTER TABLE Table_1
ADD  
TermDate datetime

select * from table_1;

ALTER TABLE Table_1 ADD CHECK myckeck
(TermDate IS NULL OR col1 = 'sss')
ALTER TABLE Table_1 drop constraint myckeck

-- alter table table_1 drop constraint CK__Table_1__534D60F1

ALTER TABLE Table_1 drop column TermDate 


