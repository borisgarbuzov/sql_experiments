
select * from full_post;
select count(*) from full_post;
select distinct year_create from full_post;

select count(year_create), year_create from full_post group by year_create ;

-- now I want to group by customer
select distinct name from full_post fp ;
select count(distinct name) from full_post ;
select name, sum(value) from full_post fp group by name;

-- how to save it as a table?
create table sum_table as 
select name, sum(value) from full_post fp group by name;
select * from sum_table;
alter table sum_table 
add column customer_group varchar(10);
select * from sum_table ;

update sum_table set
customer_group = 'small' where sum_table.sum < 10000*2.29;

update sum_table set customer_group = 'medium'
where sum_table.sum between 10000*2.29 and 500000*2.29;

update sum_table set customer_group = 'large'
where sum_table.sum > 500000*2.29;

--transfer this group column from the sum table to full_post

alter table full_post 
add column customer_group varchar(10);
select * from full_post fp ;

update full_post set
customer_group = null;
-- nothing changed

update full_post set
customer_group = 
(select sum_table.customer_group from sum_table
where sum_table.name = full_post.name);










select name, count(name) from full_post group by name ;




CREATE TABLE full_post
(
	Year int, 
	Week int, 	
	Name varchar,
	Value int

);


/*
path = "https://raw.githubusercontent.com/borisgarbuzov/ml_python/master/canadapost/data/"
file1 = "Canada_Post_2019.csv"
file2 = "Canada_Post_2018_auto_long.csv"
file3 = "Canada_Post_2017_auto_long.csv"
file4 = "Canada_Post_united_values.csv"
*/



copy canadapost2019(Week_Number, Customer, Volume)
from '/home/developer/Downloads/canadapost_2019.csv'
delimiter ',' csv;

select count(*) from canadapost2019;
truncate canadapost2019;
select count(*) from canadapost2019;

select customer, sum(volume)
from canadapost2019
group by customer;

============================================================

drop table full_post;

CREATE TABLE full_post
(
	year_create int, 
	week_create int, 	
	Name varchar,
	Value int
);


select count(*) from full_post;
select * from full_post;

select name, sum(value) as s
from full_post
group by name
order by s DESC;

create table event_table 
(
year int,
week int, 
customer varchar(20),
volume int4, 
peak_events varchar(20),
strike_events varchar(20)
);
select * from event_table ;
drop table event_table ;


select * from event_table where 
strike_events = 'strike';

select * from event_table where 
strike_events = Null;

select * from event_table where 
strike_events is not Null;

select * from event_table where 
strike_events <> '';

-- 23 June 2020

-- We have 3 tables in canadaPost so far:
select * from full_post ;
select * from sum_table;
select * from event_table;

select distinct week from event_table where 
strike_events = 'strike'
order by week;

-- what is the difference between full_post and event_table?
select count(*) from full_post ;
select count(*) from event_table ;
-- The number of records in both tables is about 12k. 
-- But columns are a bit different.
-- full_post contains group, 
-- while event_table contains 2 event columns
-- it is OK that we do not have the groups in event_table
-- we can connect it to the sum_table

-- in sum_table:
-- Add name is primary key
-- Alter table: make name to be a primary key
-- Connect it to a foreign key = customer in sum_table, 

alter table sum_table 
add primary key (name)
;
select * from sum_table;

-- now need a foreign key in event_table
alter table event_table 
ADD constraint customer_constraint foreign key (customer) references sum_table (name)
;
select * from event_table;


---- all before strike
------- show 17 and 18
select * from event_table
where year = 2017 or year = 2018;

select * from event_table
where year in (2017,2018);

select * from event_table
where year <= 2018;

select count(*) from event_table
where year <= 2018;

select count(*) from event_table
where year in (2017,2018);

-- print all before week = 5 2018
select count(*) from event_table
where 
(year < 2018)
or
((year = 2018) and week < 5)
; -- 5711

select * from event_table
where 
(year < 2018)
or
((year = 2018) and week < 5)
order by 
(year, week)
; -- 5711

-- How to show all before strike?
-- select all strike record
-- Prestrike is not strike
-- Take minimal date of this selection
-- select all before this date

select * from event_table 
where strike_events = 'strike';

select count(*) from event_table 
where strike_events = 'strike'; -- 612

create table strike_table as
select count(*) from event_table 
where strike_events = 'strike'
;































