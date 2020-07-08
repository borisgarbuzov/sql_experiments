/*
create table parent_table 
(col1 int);
drop table parent_table ;
*/
select * from parent_table ;
select * from negative_table ;
insert into negative_table values (-2);
drop table negative_table ;



CREATE INDEX positive_mynumber_index 
  ON negative_table (mynumber);

CREATE OR REPLACE FUNCTION negative_table_insert_trigger()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO negative_table VALUES (NEW.*);
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;


CREATE TRIGGER mytrigger
    BEFORE INSERT ON parent_table
    FOR EACH ROW EXECUTE PROCEDURE negative_table_insert_trigger();
    
   
   
   