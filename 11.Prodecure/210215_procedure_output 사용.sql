USE [sqlDB]
GO

select * from testTBL;

--프로시저 생성 또는 수정을 동시에
create or alter procedure usp_users4
	@txtValue nvarchar(20),
	@outValue int output--리턴받는 매개변수(파라미터)
as
	insert into testTBL values (@txtValue);
	select @outValue = IDENT_CURRENT('testTBL');-- testTBL의 현재 아이덴티티 값이 얼마인지
GO

declare @pout int;

exec usp_users4 '5번째 텍스트',@pout output;

select @pout


print concat('현재 입력된 값은 ==>',@pout);




