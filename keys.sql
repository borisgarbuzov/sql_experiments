-- создаем последовательность
-- с параметрами по умолчанию
CREATE SEQUENCE seq;

-- создаем тестовую таблицу
create table tblseq(
id integer not null,
num  double precision, 
constraint pk_tblseq primary key (id)
);

-- вставляем данные для PostgreSQL
insert into tblseq values(nextval('seq'),3.14);
insert into tblseq values(nextval('seq'),6.14);
insert into tblseq values(nextval('seq'),7.14);
-- проверяем 
select * from tblseq;
-- уничтожение последовательности
DROP SEQUENCE seq;
drop table tblseq;
------------------------------------------------
-- Автоматический инкремент
-- для PostgreSQL
CREATE SEQUENCE seq;
create table tblseq(
id integer not null DEFAULT nextval('seq'),
num  double precision, 
constraint pk_tblseq primary key (id)
);

-- теперь значение id будет устанавливаться
-- автоматически следующим значением 
-- последовательности seq
insert into tblseq(num) values(3.14);
insert into tblseq(num) values(6.14);
insert into tblseq(num) values(7.14);
select * from tblseq;
drop sequence seq;
drop table tblseq;
--------------------------------------------------
-- Автоинкремент с помощью типа serial
create table tblseq(
id serial,
num  double precision,
constraint pk_tblseq primary key (id)
);
-- значение id будет устанавливаться автоматически
-- следующим значением
insert into tblseq(num) values(3.14);
insert into tblseq(num) values(6.14);
insert into tblseq(num) values(7.14);
select * from tblseq;



