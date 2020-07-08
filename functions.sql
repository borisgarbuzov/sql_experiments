
SELECT * FROM pg_type where name = 'rainbow';

SELECT * FROM information_schema.tables;
SELECT table_name FROM information_schema.tables;



CREATE OR REPLACE FUNCTION public.get_color_note(rainbow)
    RETURNS text
    LANGUAGE 'sql'

    COST 100
    VOLATILE 
AS $BODY$
SELECT note FROM my_colors WHERE color = $1
$BODY$;

select * from my_colors;

select get_color_note('blue');
select get_color_note('red');


ALTER FUNCTION public.get_color_note(rainbow)
    OWNER TO postgres;

--==================================================================

   --Yaroslav's broken code
CREATE OR REPLACE FUNCTION public.inc(
	i bigint,
	val bigint DEFAULT 1)
    RETURNS bigint
    LANGUAGE 'plpgsql'

    --COST 100
    --VOLATILE 
AS 
$BODY$
BEGIN
	return i + val;
END;
$BODY$;

--From Boris's admin
CREATE OR REPLACE FUNCTION public.inc(val integer)
 RETURNS integer
 LANGUAGE plpgsql
AS 
$function$
begin
RETURN val + 1;
END; 
$function$
;



ALTER FUNCTION public.inc(bigint, bigint)
    OWNER TO postgres;

=================================================================

CREATE OR REPLACE FUNCTION public.totalrecords(value character varying)
    RETURNS integer
    LANGUAGE 'plpgsql'
AS $BODY$
declare
	total integer;
BEGIN
   SELECT count(*) into total FROM customers WHERE cust_name=value;
   RETURN total;
END;
$BODY$;

ALTER FUNCTION public.totalrecords(character varying)
    OWNER TO postgres;

-- Ã�Å¾Ã�Â¿Ã�Â¸Ã‘ï¿½Ã�Â°Ã�Â½Ã�Â¸Ã�Âµ
public.totalrecords - Ã�Â½Ã�Â°Ã�Â·Ã�Â²Ã�Â°Ã�Â½Ã�Â¸Ã�Âµ Ã‘â€žÃ‘Æ’Ã�Â½Ã�ÂºÃ‘â€ Ã�Â¸Ã�Â¸
[OR REPLACE] - Ã�Â¿Ã�Â¾Ã�Â·Ã�Â²Ã�Â¾Ã�Â»Ã‘ï¿½Ã�ÂµÃ‘â€š Ã�Â¸Ã�Â·Ã�Â¼Ã�ÂµÃ�Â½Ã�Â¸Ã‘â€šÃ‘Å’ Ã‘â€žÃ‘Æ’Ã�Â½Ã�ÂºÃ‘â€ Ã�Â¸Ã‘Å½
RETURNS integer - Ã�Â¾Ã�Â¿Ã‘â‚¬Ã�ÂµÃ�Â´Ã�ÂµÃ�Â»Ã�ÂµÃ�Â½Ã�Â¸Ã�Âµ Ã‘â€šÃ�Â¾Ã�Â³Ã�Â¾, Ã‘â€¡Ã‘â€šÃ�Â¾ Ã‘â€žÃ‘Æ’Ã�Â½Ã�ÂºÃ‘â€ Ã�Â¸Ã‘ï¿½ Ã�Â±Ã‘Æ’Ã�Â´Ã�ÂµÃ‘â€š Ã�Â²Ã�Â¾Ã�Â·Ã�Â²Ã‘â‚¬Ã�Â°Ã‘â€°Ã�Â°Ã‘â€šÃ‘Å’. Ã�â€™ Ã�Â¿Ã�Â°Ã‘â‚¬Ã�Â°Ã�Â¼Ã�ÂµÃ‘â€šÃ‘â‚¬Ã�Âµ Ã‘Æ’Ã�ÂºÃ�Â°Ã�Â·Ã‘â€¹Ã�Â²Ã�Â°Ã�ÂµÃ‘â€šÃ‘ï¿½Ã‘ï¿½ Ã‘â€šÃ�Â¸Ã�Â¿ Ã�Â´Ã�Â°Ã�Â½Ã�Â½Ã‘â€¹Ã‘â€¦, Ã�ÂºÃ�Â¾Ã‘â€šÃ�Â¾Ã‘â‚¬Ã‘â€¹Ã�Â¹ Ã�Â²Ã�ÂµÃ‘â‚¬Ã�Â½Ã‘â€˜Ã‘â€š Ã‘â€žÃ‘Æ’Ã�Â½Ã�ÂºÃ‘â€ Ã�Â¸Ã‘ï¿½, Ã‘â€šÃ�Â¸Ã�Â¿ Ã�Â¼Ã�Â¾Ã�Â¶Ã�ÂµÃ‘â€š Ã�Â±Ã‘â€¹Ã‘â€šÃ‘Å’ Ã�Â±Ã�Â°Ã�Â·Ã�Â¾Ã�Â²Ã‘â€¹Ã�Â¼, Ã�Â¸Ã�Â»Ã�Â¸ Ã�Â¶Ã�Âµ Ã�Â¼Ã�Â¾Ã�Â¶Ã�ÂµÃ‘â€š Ã‘ï¿½Ã‘ï¿½Ã‘â€¹Ã�Â»Ã�Â°Ã‘â€šÃ‘Å’Ã‘ï¿½Ã‘ï¿½ Ã�Â½Ã�Â° Ã‘â€šÃ�Â¸Ã�Â¿ Ã‘ï¿½Ã‘â€šÃ�Â¾Ã�Â»Ã�Â±Ã‘â€ Ã�Â° Ã‘â€šÃ�Â°Ã�Â±Ã�Â»Ã�Â¸Ã‘â€ Ã‘â€¹.
AS $BODY$ ... $BODY$; Ã‘ï¿½Ã�Â¾Ã�Â´Ã�ÂµÃ‘â‚¬Ã�Â¶Ã�Â¸Ã‘â€š Ã�Â¸Ã‘ï¿½Ã�Â¿Ã�Â¾Ã�Â»Ã�Â½Ã‘ï¿½Ã�ÂµÃ�Â¼Ã‘Æ’Ã‘Å½ Ã‘â€¡Ã�Â°Ã‘ï¿½Ã‘â€šÃ‘Å’
declare - Ã�Â¾Ã�Â¿Ã‘â‚¬Ã�ÂµÃ�Â´Ã�ÂµÃ�Â»Ã‘ï¿½Ã�ÂµÃ‘â€š Ã�Â²Ã�Â½Ã‘Æ’Ã‘â€šÃ‘â‚¬Ã�ÂµÃ�Â½Ã�Â½Ã�Â¸Ã�Âµ Ã�Â¿Ã�ÂµÃ‘â‚¬Ã�ÂµÃ�Â¼Ã�ÂµÃ�Â½Ã�Â½Ã‘â€¹Ã�Âµ Ã�Â² Ã‘â€žÃ‘Æ’Ã�Â½Ã�ÂºÃ‘â€ Ã�Â¸Ã�Â¸


================================================================
-- FUNCTION: public.totalrecords(character varying)
-- DROP FUNCTION public.totalrecords(character varying);

CREATE OR REPLACE FUNCTION public.totalrecords(
	value character varying)
    RETURNS real
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$
declare
	total integer;
	results real;
	invalue integer;
BEGIN
	invalue = 9;
   SELECT count(*) into total FROM customers WHERE cust_name=value;
   results = ((total::real + invalue::real) / 2);
   RETURN results;
END;
$BODY$;

ALTER FUNCTION public.totalrecords(character varying)
    OWNER TO postgres;