-- Does not work without a function
do $$
select * from t1;
$$;

-- Does not work without a function
$$
begin
select * from t1;
end
$$;

-- works
with myconstant (var1) as (
values ('a')
)
select * from t1, myconstant where col1 = var1;

CREATE TABLE t1aa as
select 5;
select * from t1aa;
select 2 from t1aa;
select 10;
select indexdef from pg_indexes where names.;

SELECT
    tablename,
    indexname,
    indexdef
FROM
    pg_indexes
WHERE
    schemaname = 'public'
ORDER BY
    tablename,
    indexname;
   
   SELECT
    indexname,
    indexdef
FROM
    pg_indexes
WHERE
    tablename = 't2';
   
   
   
   
DO $$
DECLARE myvar integer;
begin
	-- equivalent to myvar = 5
    SELECT 5 INTO myvar;

    DROP TABLE IF EXISTS tmp_table;
    CREATE TABLE tmp_table as
    select 5;
    -- SELECT * FROM yourtable WHERE   id = myvar;
END $$;

SELECT * FROM tmp_table;

