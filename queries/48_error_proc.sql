BEGIN TRY
PRINT 'The error is going to occur on Line 2.'
SELECT 1/0
PRINT 'This line is never reached.'
END TRY
BEGIN CATCH
PRINT 'The error occurred on line ' + CAST(ERROR_LINE() AS
NVARCHAR(8))
PRINT 'The error message is ' + CAST(ERROR_MESSAGE() AS
NVARCHAR(80))
PRINT 'The error number is ' + CAST(ERROR_NUMBER() AS NVARCHAR(8))
PRINT 'The error procedure is ' + CAST(ERROR_PROCEDURE()
AS NVARCHAR(8))
PRINT 'The error severity is ' + CAST(ERROR_SEVERITY() AS
NVARCHAR(8))
PRINT 'The error state is ' + CAST(ERROR_STATE() AS
NVARCHAR(8))
END CATCH

