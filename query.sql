\copy weather to 'weather.csv' delimiter ',' csv header;
\copy weather from 'weather.csv';
select * from weather;
