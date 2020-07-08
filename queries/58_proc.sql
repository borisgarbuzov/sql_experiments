-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE boris_proc 
	-- Add the parameters for the stored procedure here
	@par1 int,
	@@par2 nvarchar (10),
	@outpar nvarchar (10) output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
   /*SELECT @managerID = ManagerID 
   FROM HumanResources.Employee 
   WHERE EmployeeID = @employeeID*/
select CompanyName from Customers
select QuantityPerUnit from Products
return 0
--print 'huynya' + cast (@par1 as nvarchar(10)) + cast (@@par2 as nvarchar(10))
--set @outpar = 'pizda'
END
GO

