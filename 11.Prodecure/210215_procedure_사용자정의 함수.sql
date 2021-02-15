-- 사용자 정의 함수를 사용안 한것
select
	*,
	(year(GETDATE())-birthYear)+1 as 나이
	from userTBL

-- 사용자 정의 함수를 사용한 것
select *,
		dbo.ufn_getAge(birthYear) from userTBL