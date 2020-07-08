
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;

SELECT *
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY 3;

select * from long_table_for_pivot;
	
CREATE TABLE long_table
(
    var_name TEXT,
    var_type TEXT,
    var_count INT
);
drop table long_table;

INSERT INTO long_table
VALUES
('a', 'var', 1),
('a', 'var', 1),
('a', 'var', 2),
('b', 'price', 1),
('c', 'var', 2),
('d', 'price', 3),
('d', 'var', 5);

select * from long_table;
	
SELECT * 
FROM CROSSTAB
(
    	'SELECT var_name, var_type, var_count
    	 FROM long_table
    	 ORDER BY 1,2'
)AS T (var_name text, var INT, price INT);


SELECT * 
FROM CROSSTAB
(
    	'SELECT var_name, var_type, var_count
    	 FROM long_table
    	 '
)AS T (var_name text, var INT, price INT);

-- select * from T;

SELECT * 
FROM CROSSTAB
(
    	'SELECT var_name, var_type, var_count
    	 FROM long_table
    	 '
)AS T1 (var_name text, var INT, price INT);

SELECT * 
FROM CROSSTAB
(
    	'SELECT var_name, var_type, var_count
    	 FROM long_table
    	 '
)AS  (var_name text, var INT, price INT);

SELECT * 
FROM CROSSTAB
(
    	'SELECT var_name, var_type, var_count
    	 FROM long_table
    	 '
)AS  (any1 text, any2 INT, any3 INT);







