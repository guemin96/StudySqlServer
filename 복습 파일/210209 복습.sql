use sqlDB;
go

select *
  from userTBL;

select CHARINDEX('지금','너는 지금 뭐해',1);


select LEFT('지금 뭐해',1);

select right('지금 뭐해',1);

select substring('너는 지금 뭐해',2,3); --2번째부터 3글자

select format(GETDATE(),'MM');

select ROW_NUMBER() over(partition by addr order by height desc) userID,userName,addr,height
  from userTBL;


create table pivotTBL
(
	username nvarchar(10),
	season nvarchar(2),
	amount int
);

insert into pivotTBL values ('김범수','겨울',10),
							('윤종신','여름',15),
							('김범수','가울',25),
							('김범수','봄',3),
							('김범수','봄',37),
							('윤종신','겨울',40),
							('김범수','여름',14),
							('김범수','겨울',22),
							('윤종신','여름',64);



create table pivottable1
(
	userID nvarchar(10),
	season nvarchar(2),
	amount int

);

insert into pivottable1 values  ('김범수','겨울',10),
								('윤종신','여름',15),
								('김범수','가울',25),
								('김범수','봄',3),
								('김범수','봄',37),
								('윤종신','겨울',40),
								('김범수','여름',14),
								('김범수','겨울',22),
								('윤종신','여름',64);


select * from pivottable1
pivot(  sum(amount)
		for season
		in ([여름],[가을],[겨울]))as resultvar;

with CTE_var(userID,userName,height)
as
(select userID,userName,height
  from userTBL
)
select * from CTE_var order by height

select * from userTBL;
select * from buyTBL2;

select u.userName,u.birthYear,u.height,CONCAT(u.mobile1,'-',LEFT(u.mobile2,4),'-',right(u.mobile2,4))as '핸드폰번호',b.groupName,b.prodName
  from buyTBL2 as b
 inner join userTBL as u
    on b.userID=u.userID




select * 
  from stdTbl
 left outer join stdclubTbl
    on stdTbl.stdname=stdclubTbl.std_name
 full outer join clubTbl
    on stdclubTbl.club_name=clubTbl.clubname;


