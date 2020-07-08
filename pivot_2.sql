
create table long_table_for_pivot
(
c1 varchar(10),
c2 varchar(10)
);


CREATE EXTENSION IF NOT EXISTS tablefunc;


SELECT * FROM crosstab( 
$$SELECT c1, c2
  FROM long_table_for_pivot $$,
$$SELECT c2 from long_table_for_pivot $$
);

-- AS ct(customers_name VARCHAR, Tweetholdar NUMERIC,Promuton NUMERIC,Transniollor NUMERIC,Cleanputon NUMERIC,Tabwoofphone NUMERIC,Supceivra NUMERIC,Supputommar NUMERIC,Mictellar NUMERIC,Armlififiator NUMERIC,Monoculimry NUMERIC);


