use sqlDB;
go

--이름이 김경호인 사람을 조회
select * from userTBL
 where username ='김경호';

--1970년 이후 출생에 키가 182이상이 사람 아이디, 이름만 조회
select userID, userName, height
  from userTBL
 where birthyear >= 1970
and height >=182
and username like '성%';

--1970년 이후 출생이거나 키가 182이상인 사람들 모두
select userID, userName, height
  from userTBL
 where birthyear >= 1970
or height >=182;

--키가 180에서 183까지 사람만 조회
select userID, userName, height
  from userTBL
 where height>= 180
and height <=183;

--between and 구문
select userID, userName, height
  from userTBL
 where height between 180 and 183;

--지역이 경남, 전남, 경북
select userID, userName, height, addr
  from userTBL
 where addr ='경남'
	or addr ='전남'
	or addr ='경북';

select userID, userName, addr
  from userTBL
 where addr in('경남','전남','경북');


select userID, userName, addr
  from userTBL
 where username like '김%';


select userID, userName, addr
  from userTBL
 where username like '_종신';

---subquery
select username, height 
  from userTBL
 where height > 
	(select height from userTBL where username='김경호');

---subquery
select username, height, addr 
  from userTBL
 where height >= all
	(select height from userTBL where addr='경남');

select username, height, addr 
  from userTBL
 where height =any
	(select height from userTBL where addr='경남');


--order by 정렬
select username, mdate
  from userTBL 
 order by mdate desc;

 select *
  from userTBL 
 order by userID asc;

 --distinct
 select distinct addr
   from userTBL;

 select top(5) *
   from userTBL
  order by mdate desc;

  select userID,username, birthyear
   from userTBL
  order by birthyear
  offset 4 rows
  fetch next 3 rows only;

  --복사 
  select * into buyTBL2 from buyTBl;
  
  select userID,prodName into buyTBL3 from buyTBl;


  --Group By
  
  select userID, amount
    from buyTBl
   order by userID;

 select userID, sum(amount) as '구매합계'
   from buyTBl
  group by userID;


 --min,max

 select userID,username, min(height) as '최소키',max(height) as '최대키'
   from userTBL
   group by userID,username;

select userID, username 
  from userTBL
  where height =(select min(height)from userTBL)
  or height=(select max(height) from userTBL)

-- 총 데이터의 개수
select count(*) as '회원수' from userTBL;
select count(*) as '구매내역수' from buyTBl;


use sqlDB;
go

select * from userTBL;

update userTBL
set height =166
where userID ='JYP'


