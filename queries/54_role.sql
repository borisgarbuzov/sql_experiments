--CREATE ROLE MyReadOnlyRole
select USER_NAME()

--execute as user = 'dbo'

USE db1
CREATE TABLE CallCenter
(CallID int IDENTITY NOT NULL,
CustomerLastName varchar(30),
CustomerFirstName varchar(30),
CallInformation varchar(200),
CallOperative varchar(50) NOT NULL DEFAULT CURRENT_USER
)

INSERT
INTO CallCenter (CustomerLastName, CustomerFirstName,
CallInformation)
VALUES ('Smith', 'John', 'Problem with recently purchased
widget.')


select * from callCenter
