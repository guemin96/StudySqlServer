use sqlDB;
go

create or alter trigger trg_backupUserTBl
on usertbl
/*with encryption--usertbl에 트리거 수정을 비활성화 시킴*/
after update, delete
as 
	declare @modType nchar(2);

	if (COLUMNS_UPDATED()>0)--업데이트
	begin
		set @modType = '수정'
	end
	else --딜리트
	begin
		set @modType = '삭제';
	end




	insert into backup_userTBL
		select [userID]
			  ,[username]
			  ,[birthyear]
			  ,[addr]
			  ,[moblie1]
			  ,[moblie2]
			  ,[height]
			  ,[mdate]
			  ,@modType
			  ,getdate()
			  ,user_name()
		  FROM deleted;
go



