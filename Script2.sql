


delete from t1;
delete from t2;
delete from t1 where col1 = NULL;
delete from t2 where col1 = NULL;

insert into t1 values
('a'), ('b');
insert into t2 values
('c'), ('d');
select * from t1;
select * from t2;
select t1.col1, t2.col1 from t1, t2;
select * from t1, t2;
SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather, cities
    WHERE city = name;
SELECT weather.city, weather.temp_lo, weather.temp_hi,
       weather.prcp, weather.date, cities.location
    FROM weather, cities
    WHERE cities.name = weather.city;
SELECT *
    FROM weather INNER JOIN cities ON (weather.city = cities.name);
SELECT *
    FROM weather w, cities c
    WHERE w.city = c.name;
   
