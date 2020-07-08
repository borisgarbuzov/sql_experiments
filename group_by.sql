select * from t1;
select count(*) from t1; -- 29
select distinct * from t1;
select count(distinct col1) from t1; -- 13
select count(distinct col2a) from t1; -- 8
select count(distinct (col1, col2a)) from t1; --19

select col1 from t1 ; --29
select concat(col1) from t1 ; --29
select concat(col1) from t1 group by 1; --13

select count(col1) from t1 ; --1
--select count(col1) from t1 group by 1; -- fails
select count(col1) from t1 group by 1; -- fails
select count(*) from t1 group by col1;
--select count(*) from t1 group by 1; -- fails

select count(col1) from t1 group by col2a; -- 9
select count(col1)^2 from t1 group by col2a; -- 9
select max(col1) from t1 group by col2a; -- 9



