/*SELECT 1/0
PRINT 'The value of @@ERROR is ' + CAST(@@ERROR AS
NVARCHAR(8))
PRINT 'The value of @@ERROR is ' + CAST(@@ERROR AS
NVARCHAR(8))

SELECT 1/0
IF @@ERROR <> 0
PRINT 'There was an error. The error number was ' +
CAST(@@ERROR AS NVARCHAR(8))
ELSE
PRINT 'The statement executed successfully.'
SELECT 1/2
IF @@ERROR <> 0
PRINT 'There was an error. The error number was ' +
CAST(@@ERROR AS NVARCHAR(8))
ELSE
PRINT 'The statement executed successfully.'


DECLARE @ERROR INT
SELECT 1/0
SET @ERROR = @@ERROR
PRINT 'The value of @ERROR is ' + CAST(@ERROR AS
NVARCHAR(8))
PRINT 'The value of @ERROR is ' + CAST(@ERROR AS
NVARCHAR(8))

PRINT 'The value of @@ERROR is ' + CAST(@@ERROR AS
NVARCHAR(8))

BEGIN TRY
SELECT 1/0
END TRY
BEGIN CATCH
PRINT 'The value of @@ERROR is ' + CAST(@@ERROR AS
NVARCHAR(8))
PRINT 'You shouldn''t have done that!'
PRINT 'The value of @@ERROR is now ' + CAST(@@ERROR AS
NVARCHAR(8))
END CATCH
go
*/
sp_addmessage 
@msgnum = 88870,
@Severity = 16,
@msgtext = 'You 555555555 allowed.'
--REPLACE


DECLARE @Numerator INT
SET @Numerator = 0
IF @Numerator = 0
RAISERROR (88870, 16, 1)
ELSE
SELECT 1 / @Numerator AS RESULT





