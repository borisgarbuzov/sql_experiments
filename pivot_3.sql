
CREATE EXTENSION tablefunc;

CREATE  TABLE test_crosstab
(
    Product_Name TEXT
    ,Product_Category TEXT
    ,Product_Count INT
);

INSERT INTO test_crosstab
VALUES
('Mobile','IT',20)
,('Mobile','ELE',40)
,('Desktop','IT',50)
,('Desktop','ELE',60)
,('Laptop','IT',30)
,('Laptop','ELE',70)
,('tablet', 'BC', 50);

select * from test_crosstab;

SELECT *
FROM CROSSTAB
(
    'SELECT Product_Name, Product_Category, Product_Count
    FROM test_crosstab
    ORDER BY 1,2'
)AS T (Product_Name text, IT INT, ELE INT);

SELECT version();

select * from test_crosstab;

begin transaction;
UPDATE test_crosstab SET product_name = 'NaN';
select * from test_crosstab;
rollback;

SELECT x,
  round(x::numeric) AS num_round,
  round(x::double precision) AS dbl_round
FROM generate_series(-3.5, 3.5, 0.25) as x;

CREATE SEQUENCE test_crosstab_product_name_seq AS integer;


CREATE TABLE new_crosstab_product_name_table (
    new_product_name_col integer NOT NULL DEFAULT nextval('test_crosstab_product_name_seq')
);
select * from new_crosstab_product_name_table;


ALTER SEQUENCE test_crosstab_product_name_seq 
OWNED BY new_crosstab_product_name_table.new_product_name_col;

CREATE TABLE serial_table (
    serial_col SERIAL,
    value_col int
);

alter table serial_table 
alter column value_col type real
;

insert into serial_table (value_col) values ('-infinity');
select * from serial_table ;














