/*
BEGIN;
UPDATE accounts SET balance = balance - 100.00
    WHERE name = 'Alice';
SAVEPOINT my_savepoint;
UPDATE accounts SET balance = balance + 100.00
    WHERE name = 'Bob';
-- error. Save it and use another account
ROLLBACK TO my_savepoint;
UPDATE accounts SET balance = balance + 100.00
    WHERE name = 'Wally';
COMMIT;
*/
BEGIN TRANSACTION;
select * from t1;
insert into t1 values ('uncom 2');
select * from t1;
insert into t1 values ('uncom 100000000000000000');
select * from t1;
COMMIT TRANSACTION; 
rollback transaction;
