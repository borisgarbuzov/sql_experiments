select now(); -- date and time
select current_date; -- date
select current_time; -- time
--Find rows between two absolute timestamps:
select *
from orders
where order_date between '1998-01-01' and '1998-01-31';

select count(*)
from orders;

select *
from orders;

select *
from orders
where order_date > now() - interval '10000 week'; -- or '1 week'::interval, as you like
-- or '1 week'::interval, as you like

select *
from orders
where order_date between now() - interval '10000 week' and now() - interval '1000 week'; 

select date_part('minute', now()); -- or hour, day, month
-- takes minutes out of server time
select now(); -- on client
-- takes minutes out of time. 
-- returns 0-6 (integer), where 0 is Sunday and 6 is Saturday
select date_part('dow', now());
select date_part('dow', now()  - interval '1 day');
select now() - interval '1 day';
select now() - interval '2 day';
select date_part('dow', now()  - interval '2 day');
-- returns a string like monday, tuesday, etc
select to_char(now(), 'day');
select (now(), 'day');
select (now(), 'abc');
select to_char(now(), 'abc');
select to_char(now(), 'abracadabra');
select to_char(now(), '12345678');
select date_part('epoch', now());

-- Difference in seconds
select date_part('epoch', now()) - date_part('epoch', now() - interval '1 day'); -- or minute, hour,

-- Alternatively, you can do this with `extract`
select extract(epoch from now()) - extract(epoch from now() - interval '1 day');














--Extracting part of a timestamp:
select date_part('minute', now()); -- or hour, day, month


