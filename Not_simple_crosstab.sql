-- https://www.vertabelo.com/blog/creating-pivot-tables-in-postgresql-using-the-crosstab-function/

drop table evaluations;
CREATE TABLE evaluations
(
    student varchar(60),
    subject varchar(60),
    evaluation_result decimal(3,1),
    evaluation_day date
);

INSERT INTO evaluations
VALUES
('Smith, John', 'Music', 7.0 ,'2016-03-01'),
('Smith, John', 'Maths', 4.0 ,'2016-03-01'),
('Smith, John', 'History', 9.0 ,'2016-03-22'),
('Smith, John', 'Language',	7.0	,'2016-03-15'),
('Smith, John', 'Geography', 9.0 ,'2016-03-04'),
('Gabriel, Peter', 'Music',	2.0	,'2016-03-01'),
('Gabriel, Peter', 'Maths',	10.5 ,'2016-03-01'),
('Gabriel, Peter', 'History', 7.0 ,'2016-03-22'),
('Gabriel, Peter', 'Language', 4.0 ,'2016-03-15'),
('Gabriel, Peter', 'Geography',	10.7 ,'2016-03-04');

Select * from evaluations;
CREATE extension tablefunc;

SELECT student, subject, evaluation_result FROM evaluations ORDER BY 1,2


SELECT * FROM 
crosstab(' select student, subject, evaluation_result from evaluations order by student,subject ') 
AS final_result(Student1 varchar, Geography1 decimal,History decimal,Language decimal,Maths decimal,Music decimal);

SELECT * FROM 
crosstab('select student, subject, evaluation_result from evaluations order by student,subject ') 
AS newcolumns
'
SELECT distinct subject FROM evaluations
';

SELECT distinct subject FROM evaluations;


