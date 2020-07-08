drop table t_primary cascade;
create table t_primary 
(
mykey int unique 
);
insert into t_primary values
(5);
select * from t_primary ;

drop table t_foreign ;
create table t_foreign
(
mykey2 int,
foreignkey2 int references t_primary (mykey) ON DELETE RESTRICT
);
select * from t_foreign ;

insert into t_foreign values
(6, 5);
delete from t_foreign where mykey2 = 6;

delete from t_primary where mykey = 5;

CREATE TABLE circles (
    c circle,
    EXCLUDE USING gist (c WITH &&)
);










