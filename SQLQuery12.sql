USE [ACsTeches]
GO
/****** Object:  StoredProcedure [dbo].[UserPROCEDURE]    Script Date: 11/29/2022 23:13:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[UserPROCEDURE]
@user nvarchar (max),
@FirstName nvarchar (max) =null,
@FinalName nvarchar (max) =null,
@UserName nvarchar (max) =null,
@EmailUser nvarchar (max) =null,
@MobileNumber nvarchar (max) =null
AS
BEGIN

	SET NOCOUNT ON;
	if(@user='GetUserList')
	Begin
	select 
	ID,
	FirstName,
	FinalName,
	EmailUser,
	MobileNumber,
	UserName
	
	
	
	 from UserDetiels
	End
	
	if(@user='AddUser')
	Begin
	insert into UserDetiels(
	FirstName,
	FinalName,
	EmailUser,
	MobileNumber,
	UserName)
	values(
	@FirstName,
	@FinalName,
	@EmailUser,
	@MobileNumber,
	@UserName)
	
	End

END
