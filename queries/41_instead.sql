USE db1
CREATE TABLE CantChangeMe
(MessageID int PRIMARY KEY IDENTITY,
Message varchar(200))
--2. Insert a test row into the CantChangeMe table before you create the trigger:
INSERT
INTO CantChangeMe
VALUES ('This was inserted before the trigger was created.')
--3. Confirm successful insertion of the row.
SELECT * FROM CantChangeMe
go
--4. Create the INSTEAD OF trigger, PreventChanges, using this CREATE TRIGGER statement.
--This statement prints a simple message telling the user that he or she
--can’t change the database.
CREATE TRIGGER PreventChanges
ON CantChangeMe
INSTEAD OF INSERT, UPDATE, DELETE
AS
Print 'You cannot change this table. Do not even try'
go
--5. Attempt to insert a row into the CantChangeMe table.
--This insert will now fail because you created the PreventChanges
--trigger in the preceding step.
INSERT INTO CantChangeMe
VALUES ('This INSERT will fail.') 
go
select * from CantChangeMe
drop TABLE CantChangeMe
drop trigger PreventChanges

SELECT * FROM sys.triggers
SELECT * FROM sys.server_triggers
DISABLE TRIGGER ALL ON DATABASE
enable TRIGGER ALL ON DATABASE
DISABLE TRIGGER ALL ON SERVER

