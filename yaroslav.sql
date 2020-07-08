



create database boris_db;

CREATE OR REPLACE FUNCTION public.get_color_note(rainbow)
 RETURNS text
 LANGUAGE sql
AS $function$ SELECT note FROM my_colors WHERE color = $1$ function$
;

CREATE OR REPLACE FUNCTION public.getf1(t1)
 RETURNS character varying
 LANGUAGE sql
AS $function$ SELECT $1.col1 $function$
;

CREATE OR REPLACE FUNCTION public.getf1(t1)
 RETURNS character varying
 LANGUAGE sql
AS $function$ SELECT 'a' $function$
;

CREATE OR REPLACE FUNCTION public.getf1()
 RETURNS character varying
 LANGUAGE sql
AS $function$ SELECT col1 from t1 $function$
;


CREATE OR REPLACE FUNCTION public.new_function()
	RETURNS int4
	LANGUAGE sql
AS $function$
	BEGIN
return 5;
		
	END;
$function$







CREATE OR REPLACE FUNCTION public.getf1(myrowtype)
 RETURNS integer
 LANGUAGE sql
AS $function$ SELECT $1.f1$function$
;

CREATE OR REPLACE FUNCTION public.getf1(int inputArgument)
 RETURNS integer
 LANGUAGE sql
AS $function$SELECT $1.f1$function$
;


CREATE or replace FUNCTION inc(val integer) RETURNS integer AS $$
begin
RETURN val + 1;;
end; $$
LANGUAGE PLPGSQL;




drop function inc ;

select 5;

select inc(inc(5));

select * from pg_type;





