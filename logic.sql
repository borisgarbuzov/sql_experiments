select 1;
select true;
select 'yes':: boolean ;
-- select 'aby sho':: boolean ;
select 'aby sho' ;

select 0;
select 0::boolean;
select false;
select 'no':: boolean ;
-- select 'not yes':: boolean ;
select not true;
select not not true;
select false or true;
select not not true or false and 1::boolean;
select 'off':: boolean ;
select 'on':: boolean ;

CREATE TABLE test1 (a boolean, b text);
INSERT INTO test1 VALUES (TRUE, 'sic est');
INSERT INTO test1 VALUES (FALSE, 'non est');
SELECT * FROM test1;
SELECT * FROM test1 WHERE a;


