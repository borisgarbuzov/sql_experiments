--datetime
SELECT(CURRENT_DATE);
SELECT(CURRENT_TIME);
SELECT(CURRENT_TIMESTAMP);
SELECT(localtime);
SELECT(LOCALTIMESTAMP);

select(INTERVAL '1' year);

select(INTERVAL '1'); -- second
select(INTERVAL '1 day 2:03:04' HOUR TO MINUTE);
select(INTERVAL '1 day 2:03:04' hour to second);
select(INTERVAL '1 day 2:03:04' day to second);
select(INTERVAL '1 day 2:03:04' day to hour);

select typname, typlen from pg_type where typname ~ '^timestamp';
select typname, typlen from pg_type where typname ~ '^time';
select typname, typlen from pg_type where typname like 'time%';
select * from pg_type;

select now();
set timezone = 'America/New_York';

select now();

show timezone;
set timezone = 'America/Los_Angeles';


