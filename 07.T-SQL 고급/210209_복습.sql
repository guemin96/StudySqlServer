use sqlDB;
go

declare @var1 int;
declare @var2 nvarchar(10);
declare @var3 char(10);
declare @var4 decimal(5,1);

set @var1 = 3;
set @var2 = '정신나갈듯';
set @var3 = 90;
set @var4 = 3.14;

select @var1;
select @var2;
select @var3;
select @var4;

-- CTE 내용 정리 
with CTE_Tmpt(userID,prodName,total)
as
(
select userID,prodName, SUM(price*amount) as 'total'
  from buyTBl
  group by userID, prodName
 )
 select * from CTE_Tmpt order by total
 -- CTE_Tmpt의 열갯수와 as 밑에 select 열갯수를 통일해야 됨


 --직계 함수

 select userID,min(price) as '최소값' 
   from buyTBl
  group by userID

 select * 
   from buyTBl
  where price = (select max(price) from buyTBl)
       or price= (select min(price) from buyTBl)

select count(*) from buyTBl


select IIF(50>rand()*100,'참','거짓')

select concat('와','과연','버틸 수 잇을까?')