/*
create table selfjoin
(
	a	char(10),
	b	char(10),
	c	char(10),
	d	int
);
*/
--Select * from t1, t1;

Select * from t1 as a, t1 as b;
Select * from t1 as a, t1 as b
where a.col1 <= b.col1;

--=============== 

select * from selfjoin;

insert into selfjoin values ('a8', 'b8', 'c8', 65);

select g.b, f.c, g.d
from selfjoin f, selfjoin g
where g.d < f.d and f.a = 'a5';

select *
from selfjoin
order by d^2 asc;

select *
from selfjoin
order by d desc;

select a, b, sum(d)
from selfjoin
group by a, b
having sum(d) > 50
order by sum;

create table writer (
	poet	varchar(50),
	anthology varchar(40),
	copies_in_stock int
);

/*
insert into writer values
('Mongane Wally Serote', 'Tstetlo', 3),
('Mongane Wally Serote', 'No baby must weep', 8),
('Mongane Wally Serote', 'A tough tale', 2),
('Douglas Livingstone', 'The skull in the mud', 21),
('Douglas Livingstone', 'a littoral zone', 2);
*/

select poet, sum(copies_in_stock) from writer group by poet;

SELECT poet, copies_in_stock FROM writer GROUP BY poet, copies_in_stock;

SELECT * FROM writer;

SELECT poet, 
MAX(copies_in_stock) max, 
MIN(copies_in_stock) min, 
AVG(copies_in_stock) avg, 
SUM(copies_in_stock) sum 
FROM writer GROUP BY poet;

SELECT poet, 
MAX(copies_in_stock) AS max, 
MIN(copies_in_stock) AS min, 
AVG(copies_in_stock) AS avg, 
SUM(copies_in_stock) AS sum 
FROM writer GROUP BY poet;

SELECT poet, 
MAX(copies_in_stock) AS max, 
MIN(copies_in_stock) AS min, 
AVG(copies_in_stock) AS avg, 
SUM(copies_in_stock) AS sum 
FROM writer WHERE copies_in_stock > 5 GROUP BY poet;

SELECT poet, 
MAX(copies_in_stock) AS max, 
MIN(copies_in_stock) AS min, 
AVG(copies_in_stock) AS avg, 
SUM(copies_in_stock) AS sum 
FROM writer WHERE copies_in_stock > 5 GROUP BY poet;

SELECT poet, 
MAX(copies_in_stock) AS max, 
MIN(copies_in_stock) AS min, 
AVG(copies_in_stock) AS avg, 
SUM(copies_in_stock) AS sum 
FROM writer GROUP BY poet;

SELECT * FROM writer WHERE copies_in_stock > 5;

SELECT poet, 
MAX(copies_in_stock) AS max, 
MIN(copies_in_stock) AS min, 
AVG(copies_in_stock) AS avg, 
SUM(copies_in_stock) AS sum 
FROM writer GROUP BY poet HAVING poet > 'E';

SELECT poet, 
MAX(copies_in_stock) AS max, 
MIN(copies_in_stock) AS min, 
AVG(copies_in_stock) AS avg, 
SUM(copies_in_stock) AS sum 
FROM writer WHERE poet > 'E' GROUP BY poet;

UPDATE weather
    SET temp_hi = temp_hi - 2,  temp_lo = temp_lo - 2
    WHERE date > '1994-11-28';

select * from weather w ;

DELETE FROM weather WHERE city = 'Hayward';

CREATE VIEW myview AS
    SELECT city, temp_lo, temp_hi, prcp, date, location
        FROM weather, cities
        WHERE city = name;
SELECT * FROM myview;

alter table weather rename to old_weather;
alter table cities rename to old_cities;

CREATE TABLE cities (
        city     varchar(80) primary key,
        location point
);

CREATE TABLE weather (
        city      varchar(80) references cities(city),
        temp_lo   int,
        temp_hi   int,
        prcp      real,
        date      date
);










   
