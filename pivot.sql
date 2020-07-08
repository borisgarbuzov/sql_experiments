-- create database pivot_db;

-- https://blog.devart.com/pivot-tables-in-postgresql.html
CREATE TABLE IF NOT EXISTS products(
  product_id int PRIMARY KEY,
  product_name varchar(255) NOT NULL
  );
select * from products;
select count(*) from products;

CREATE TABLE IF NOT EXISTS customers(
  customers_id int PRIMARY KEY,
  customers_name varchar(255) NOT NULL
  );
select * from customers;
select count(*) from customers;

CREATE TABLE IF NOT EXISTS product_customers(
  product_customers int PRIMARY KEY,
  product_id int NOT NULL REFERENCES products(product_id),
  customers_id int NOT NULL REFERENCES customers(customers_id),
  cost decimal(18,2)
  );
select * from product_customers;

CREATE OR REPLACE VIEW v_product_customers
AS
SELECT
  p.product_name,
  c.customers_name,
  pc.cost
FROM products p
  INNER JOIN product_customers pc
    ON p.product_id = pc.product_id
  INNER JOIN customers c
    ON pc.customers_id = c.customers_id;
select * from v_product_customers;   

DROP VIEW IF EXISTS v_product_customers;
CREATE VIEW v_product_customers
AS
  SELECT
    c.customers_name,
    p.product_name,
    pc.cost
  FROM customers c
    INNER JOIN product_customers pc
      ON c.customers_id = pc.customers_id
    INNER JOIN products p
      ON pc.product_id = p.product_id;

select * from v_product_customers;    
--
-- Inserting data into table customers
--
INSERT INTO customers(customers_id, customers_name) VALUES
(1, 'Yadira Villanueva'),
(2, 'Britta Ayres'),
(3, 'Bernard Creighton'),
(4, 'Merle Reiter'),
(5, 'Wilfredo Southern'),
(6, 'April Fife'),
(7, 'Vivienne Goodson'),
(8, 'Dorian Conaway'),
(9, 'Leonila Malone'),
(10, 'Ali Darling'),
(11, 'Francis Shannon'),
(12, 'Moises Adame'),
(13, 'Aubrey Boyce'),
(14, 'Erasmo Abel'),
(15, 'Tamika Wampler'),
(16, 'Geoffrey Hammonds'),
(17, 'Garth Vasquez'),
(18, 'Loree Wooden'),
(19, 'Sherly Prewitt'),
(20, 'Ward King');

--
-- Inserting data into table products
--
INSERT INTO products(product_id, product_name) VALUES
(1, 'Tweetholdar'),
(2, 'Promuton'),
(3, 'Transniollor'),
(4, 'Cleanputon'),
(5, 'Tabwoofphone'),
(6, 'Supceivra'),
(7, 'Supputommar'),
(8, 'Mictellar'),
(9, 'Armlififiator'),
(10, 'Monoculimry');

--
-- Inserting data into table product_customers
--
INSERT INTO product_customers(product_customers, product_id, customers_id, cost) VALUES
(832507484, 7, 12, 599.86),
(334131854, 9, 14, 666.71),
(1382965572, 6, 9, 894.33),
(1597713938, 9, 8, 848.85),
(2147483647, 6, 6, 508.04),
(1382965573, 2, 10, 638.58),
(617759119, 6, 13, 146.08),
(119383489, 10, 15, 231.77),
(1597713939, 5, 12, 998.12),
(832507485, 5, 17, 871.91),
(1010667740, 8, 2, 584.01),
(1225416106, 5, 16, 132.37),
(334131855, 1, 11, 332.42),
(617759120, 3, 19, 985.13),
(119383490, 4, 17, 438.44),
(1382965574, 4, 16, 688.49),
(1010667741, 6, 20, 888.06),
(334131856, 2, 4, 251.12),
(1964703150, 9, 4, 192.81),
(119383491, 9, 2, 681.65),
(334131857, 4, 4, 359.05),
(119383492, 3, 13, 731.14),
(1225416107, 1, 16, 385.05),
(1010667742, 2, 6, 397.35),
(832507486, 2, 4, 455.02),
(1597713940, 5, 2, 144.45),
(1225416108, 2, 1, 99.66),
(617759121, 10, 9, 640.5),
(1382965575, 10, 19, 504.89),
(334131858, 10, 10, 270.2),
(1749954789, 8, 2, 370.35),
(1964703151, 7, 17, 940.91),
(1749954790, 4, 1, 749.38),
(832507487, 8, 11, 558.63),
(1010667743, 7, 13, 111.01),
(1225416109, 6, 11, 934.01),
(1597713941, 1, 3, 865.3),
(119383493, 10, 11, 357.16),
(617759122, 2, 10, 208.68),
(1964703152, 3, 17, 716.09),
(1010667744, 8, 20, 442.94),
(832507488, 10, 16, 951.76),
(617759123, 7, 13, 745.16),
(832507489, 10, 5, 415.05),
(1225416110, 1, 7, 703.27),
(1749954791, 10, 2, 744.43),
(1010667745, 6, 7, 108.73),
(1964703153, 10, 6, 575.47),
(1749954792, 2, 5, 135.86),
(1225416111, 2, 16, 611.66),
(1382965576, 5, 4, 804.67),
(617759124, 2, 5, 497.38),
(1597713942, 3, 1, 178.92),
(334131859, 1, 4, 642.2),
(832507490, 2, 18, 946.02),
(1964703154, 3, 20, 966.92),
(1749954793, 6, 5, 629.9),
(617759125, 8, 15, 118.94),
(832507491, 4, 9, 775.5),
(1964703155, 8, 19, 426.35);

SELECT version();

CREATE EXTENSION IF NOT EXISTS tablefunc;

SELECT * FROM crosstab( 
$$SELECT customers_name, product_name, SUM(cost) AS cost
  FROM v_product_customers
   GROUP BY customers_name, product_name
   ORDER BY customers_name$$,
$$SELECT 'Tweetholdar' UNION ALL
  SELECT 'Promuton' UNION ALL
  SELECT 'Transniollor' UNION ALL
  SELECT 'Cleanputon' UNION ALL
  SELECT 'Tabwoofphone' UNION ALL
  SELECT 'Supceivra' UNION ALL
  SELECT 'Supputommar' UNION ALL
  SELECT 'Mictellar' UNION ALL
  SELECT 'Armlififiator' UNION ALL
  SELECT 'Monoculimry'$$
)
AS ct(customers_name VARCHAR, Tweetholdar NUMERIC,Promuton NUMERIC,Transniollor NUMERIC,Cleanputon NUMERIC,Tabwoofphone NUMERIC,Supceivra NUMERIC,Supputommar NUMERIC,Mictellar NUMERIC,Armlififiator NUMERIC,Monoculimry NUMERIC);


