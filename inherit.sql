create table t1plus () inherits (t1);

CREATE TABLE capitals (
  state      char(2)
) INHERITS (cities);

insert into t1 (col1) values ('c');

-- fails
insert into capitals (city, location, state) values
('Kazan', '(1,2)', 'Ta');

select * from capitals;
select * from cities;

select * 
    FROM ONLY cities;

delete from only cities 
where city = 'Kazan';

select * from cities;

update cities set city = 'Toronto'
where city = 'Kazan';



   


