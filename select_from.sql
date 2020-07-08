
select * from T1 CROSS JOIN T2;
select * from t1, t2;

select distinct * from t1, t2;



select * from t1, t2
union
select * from t1, t2;


select * from t1; --29
select distinct * from t1; --19

select * from t1
union
select * from t1
; -- B:19 won, Y:29

select * from t1
intersect
select * from t1
; -- B:19 won, Y:29


select * from (select * from t1);

-- does not work
SELECT *
  FROM t1
 WHERE col1 IN (SELECT col1
                   FROM t1 
                  );

--select * from setof t1;
                 
select * from t1
where col1 in (select col1 from t1);


CREATE TABLE foo (fooid int, foosubid int, fooname text);
insert into foo values 
--(
(1, 2, 'name 1'),
(3, 4, 'name 3')
--)
;
select * from foo;

CREATE or replace FUNCTION getfoo(int) RETURNS SETOF foo AS $$
    SELECT * FROM foo WHERE fooid = $1;
$$ LANGUAGE SQL;

SELECT getfoo(1) ;
SELECT getfoo(5) ;

select * from getfoo(5);

SELECT * FROM getfoo(1) ;

SELECT * FROM getfoo(1) AS anyname;


SELECT * FROM foo
    WHERE foosubid IN (
                        SELECT foosubid
                        FROM getfoo(foo.fooid) z
                        WHERE z.fooid = foo.fooid
                      );

CREATE or replace VIEW vw_getfoo AS SELECT * FROM getfoo(1);

SELECT * FROM vw_getfoo;











