--There are a few things that UDFs cannot do
--Apply schema or data changes in the database
--Create or access temp tables
--Call a stored procedure
--Execute dynamic SQL

Begin Try
	select 1/0
End Try
Begin Catch
	select 
	--Note!
	--In the Catch Black we can report the error
	ERROR_NUMBER() AS ErrorNumber,
	Error_Severity() As ErrorSeverity,
	ERROR_STATE() As ErrorState,
	ERROR_PROCEDURE() As ErrorProcedure,
	ERROR_LINE() As ErrorLine,
	ERROR_MESSAGE() As ErrorMessage;
End Catch
