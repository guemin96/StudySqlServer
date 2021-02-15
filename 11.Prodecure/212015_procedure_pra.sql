use sqlDB;
go

--프로시저 생성
create procedure usp_users
as
	select * from userTBL;
go

--프로시저 생성 또는 수정을 동시에
create or alter procedure usp_users
as
	select userID,username,birthyear from userTBL;
go



exec usp_users; --동적쿼리 exec를 실행할 때는 ()를 붙여줘야함

begin
	
end



