CREATE SCHEMA myschema;
CREATE TABLE myschema.mytable (
);
DROP SCHEMA myschema cascade;
select * from mytable;
create role myrole;
set role myrole ;
--CREATE SCHEMA myschema AUTHORIZATION myrole;

CREATE TABLE public.products ();
SHOW search_path;
SET search_path TO myschema,public;
DROP TABLE mytable cascade;
--drop role myrole;
SELECT 3 OPERATOR(pg_catalog.+) 4;
SELECT 3 OPERATOR(pg_catalog.*) 4;

REVOKE CREATE ON SCHEMA public FROM PUBLIC;
create table public.newtable ();
drop table public.newtable;





