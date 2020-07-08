select U&'\0441\043B\043E\043D';
select U&'d!0061t!+000061' UESCAPE '!';
SELECT 'foo'
'bar';
SELECT 'foo',
'bar';
--error
--SELECT 'foo'      'bar';
select '123'
'\'b;
select E'123'
'\b';
select E'123'
'\n'
'abc';

select E'123'
'\n',
'abc';

--echo 'between';

select $$Ã?â€“Ã?Â°Ã?Â½Ã?Â½Ã?Â° Ã?Â´'Ã?ï¿½Ã‘â‚¬Ã?Âº$$;

select $SomeTag$Ã?â€“Ã?Â°Ã?Â½Ã?Â½Ã?Â° Ã?Â´'Ã?ï¿½Ã‘â‚¬Ã?Âº$SomeTag$;

select $SomeTag$Ã?â€“Ã?Â°Ã?Â½Ã?Â½Ã?Â° Ã?Â´'Ã?ï¿½Ã‘â‚¬Ã?Âº$SomeTag$;

/*
$function$
BEGIN
    RETURN ($1 ~ $q$[\t\r\n\v\\]$q$);
END;
$function$
*/

select $q$[\t\r\n\v\\]$q$;
select $SomeTag$[\t\r\n\v\\]$SomeTag$;
select $bullshit$[\t\r\n\v\\]$bullshit$;

select B'1001';
--select B'1801';
select X'1001';
select X'F001';

select 2+2;
select +2+2e1;

select REAL '1.23';
select float4 '1.23';
--select int '1.23';
select int '123';

select 1.23::real;  
select 1.23;  

select float4 ( '123' );
select int8 ( '1' );
--select float ( '123' );

$a = 5;

SELECT 5 ! - 6;
SELECT 5 != 6;
SELECT not(5 != 6) or true;

--$5;

crea

CREATE FUNCTION dept(text) RETURNS t1
    AS $$ SELECT * FROM t1 WHERE col1 = $1 $$
    LANGUAGE SQL;

select dept('a');


   
   
   
































