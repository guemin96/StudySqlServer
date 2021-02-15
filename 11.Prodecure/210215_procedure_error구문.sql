use sqlDB;
go

create or alter procedure usp_error
	@userID char(8),
	@userName nvarchar(10),
	@birthYear int = 1900,
	@addr nchar(2) = '서울',
	@mobile1 char(3) = NULL,
	@mobile2 char(8) = NULL,
	@height smallint = 170,
	@mDate date = '2019-11-11'

as
	declare @err int;
	begin try
		begin tran
			INSERT INTO userTBL Values
				   (@userID, @userName, @birthYear, @addr
				   ,@mobile1, @mobile2, @height, @mDate);

		commit; 
	end try

	begin catch
		select @err = ERROR_NUMBER();
		rollback;
	end catch

	
	if @err != 0
	begin
		print '###'+@userName +'을(를) Insert에 실패했습니다.';
	end;

	print concat('에러번호 : ', @err);--오류번호 돌려줌
		 
GO

select * from userTBL;

exec usp_error'WDT','우당탕', 1988, '부산','019', '99990024', 190, '2021-02-14';-- userID와 username만 디폴트 값이 없기 때문에 다른 것들은 굳이 값을 넣지 않아도 된다.

exec usp_error'WDD','우당당';

exec sp_helpdb;--sp는 시스템 함수!!













