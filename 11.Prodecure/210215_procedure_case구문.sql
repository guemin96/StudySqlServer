﻿use sqlDB;
go
create or alter function ufn_getZodiac(@birthYear int)
returns nchar(3)
as
begin
	declare @result nchar(3);
	set @result=
		case
			when (@birthYear%12 = 0) then '원숭이'
			when (@birthYear%12 = 1) then '닭'
			when (@birthYear%12 = 2) then '개'
			when (@birthYear%12 = 3) then '돼지'
			when (@birthYear%12 = 4) then '쥐'
			when (@birthYear%12 = 5) then '소'
			when (@birthYear%12 = 6) then '범'
			when (@birthYear%12 = 7) then '토끼'
			when (@birthYear%12 = 8) then '용'
			when (@birthYear%12 = 9) then '뱀'
			when (@birthYear%12 = 10) then '말'
			else '양'
			
		end 
	return (@result)
end
	
--사용자 정의 함수
select *,
		dbo.ufn_getZodiac(birthyear) as '띠'  from userTBL


