use sqlDB;
go

create or alter procedure usp_ifelse
	@userName nvarchar(10)
as
	declare @birthYear int;-- 출생년도 저장 변수, userTBL안에 있는 사람의 생일을 가져오기 위해 @birthYear이라는 변수를 설정함
	select @birthYear = birthYear 
	  from userTBL
	 where userName = @userName;

	 if (@birthYear>= 1980) -- 위에서 지정한 변수 비교 하는 과정
	 begin
		print '1980년 이후';
	 end
	 else
	 begin
		print '1980년 이전';
	 end
go
_





