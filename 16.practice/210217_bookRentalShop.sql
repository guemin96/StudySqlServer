﻿--실제 회원정보 불러오기 레벨거꾸로, 이름순
select memberID,memberName,levels,mobile,email
  from memberTBL
 where levels <> 'S'
  order by levels desc, memberName ;

-- 책정보
select cateIdx,bookName,author,
	   interpreter,company,price 
  from booksTBL
  order by price desc;



select * from cateTBL;

--시스템 함수사용 쿼리
select memberID,
	   concat(right(memberName,2),' ',LEFT(memberName,1))as '이름',
	   case levels
			when 'A' then '골드회원'
			when 'B' then '실버회원'
			when 'C' then '브론즈회원'
			when 'D' then '아이언회원'
			when 'S' then '관리자'
			else '비회원',
	   mobile,
	   upper(email) as '이메일'
  from memberTBL
 where levels <> 'S'
  order by levels, memberName;


--사용자 레벨 리턴 함수
create or alter function dbo.ufn_getLevel
(@levels char(1))
returns nchar(5)
as
begin 
	declare @result nvarchar(5); --골드회원, 실버회원, 브론즈회원, 아이언회원 등 변수
	set @result = case @levels
			when 'A' then '골드회원'
			when 'B' then '실버회원'
			when 'C' then '브론즈회원'
			when 'D' then '아이언회원'
			when 'S' then '관리자'
			else '비회원'
	   end ;
	return @result;
end
go


--- 사용자 정의 함수
select memberID,
	   concat(right(memberName,2),' ',LEFT(memberName,1))as '이름',
	   dbo.ufn_getLevel(levels) as '회원레벨',
	   mobile,
	   upper(email) as '이메일'
  from memberTBL
 where levels <> 'S'
  order by levels, memberName;


-- 책정보 , 시스템 함수, 포맷 함수 쿼리
SELECT bookIdx
     , cateIdx
     , concat(N'책제목 > ',bookName) as bookName
     , author
     , ISNULL( interpreter,'(역자없음)')
     , company
     , format(releaseDate, 'yyyy년 MM월 dd일') as 출판일
     , format(price,'#,#.00원') as 가격
  FROM booksTBL

-- 책정보 조인
SELECT b.bookIdx
      --,b.cateIdx
	  ,c.cateName
      ,b.bookName
      ,b.author
      ,b.interpreter
      ,b.company
  FROM dbo.booksTBL as b
 inner join dbo.cateTBL as c
    on b.cateIdx = c.cateIdx;

--대여된 책의 정보 쿼리 조인

SELECT r.rentalIdx
     , r.memberIdx
	 , m.membername
     --,r.bookIdx
	 , b.bookName
     , format(r.rentalDt,'yyyy-MM-dd')as '대여일'
     , format(r.returnDt,'yyyy-MM-dd')as '반납일'
     , dbo.ufn_getstate(rentalState) as '대여상태'
  FROM dbo.rentalTBL as r
 inner join booksTBL as b
    on r.bookidx=b.bookIdx
 inner join memberTBL as m
    on r.memberIdx = m.memberIdx

-- 책을 안빌린 회원 조회

SELECT r.rentalIdx
     , r.memberIdx
	 , m.membername
     --,r.bookIdx
	 , b.bookName
     , format(r.rentalDt,'yyyy-MM-dd')as '대여일'
     , dbo.ufn_getstate(rentalState) as '대여상태'
  FROM dbo.rentalTBL as r
 inner join booksTBL as b
    on r.bookidx=b.bookIdx
 right outer join memberTBL as m
    on r.memberIdx = m.memberIdx
 where r.rentalIdx is NULL;


-- 우리 책대여점에 없는 소설장르

select c.cateidx
	 , c.cateName 
	 , b.bookName
  from cateTBL as c
  left outer join booksTBL as b
    on c.cateidx=b.cateIdx


