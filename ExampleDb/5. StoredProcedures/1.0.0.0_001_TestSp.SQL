/****** Object:  StoredProcedure [dbo].[TestSp]    Script Date: 09/18/2007 11:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TestSp]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[TestSp]

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TestSp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE dbo.TestSp
(
	@mailto varchar(100),
	@mailfrom varchar(100),
	@replyto varchar(100),
	@subject varchar(100),
	@body text,
	@send tinyint
)
AS
BEGIN

 select 1
END' 
END

