declare @m as int
SET @m=5
print @m
GO
set @m=6
print @m

--here "GO" MARKS THE END OF THE code/batch and is sent away immediately
--and thus @m is not declared.