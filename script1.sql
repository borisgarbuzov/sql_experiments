-- create database boris2;
-- psql boris;
-- mydb=>
CREATE TABLE weather (
    city            varchar(80),
    temp_lo         int,           -- low temperature
    temp_hi         int,           -- high temperature
    prcp            real,          -- precipitation
    date            date
);

CREATE TABLE cities (
    name            varchar(80),
    location        point
);

DROP TABLE cities;

INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');
select * from weather;
CREATE TABLE cities (
    name            varchar(80),
    location        point
);
INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');
select * from cities;
INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');
INSERT INTO weather (date, city, temp_hi, temp_lo)
    VALUES ('1994-11-29', 'Hayward', 54, 37);
INSERT INTO weather 
    VALUES ('Kharkov', 43+2, 57, 0.0, '1996-11-29');	
select * from weather;
INSERT INTO weather 
    VALUES ('duplicate city', 43+2, 57, 0.0, '1996-11-29'),
		   ('duplicate city', 43+2, 57, 0.0, '1996-11-29')  ;	
		   

