use sqlDB;
go

select ROW_NUMBER()over(order by height desc,userName asc) as '키 큰 순위' , userName,addr,height
from userTBL;
-- 키로 오름차순하고 똑같을 수 있기 때문에 이름으로 내림차순 함


select RANK()over( order by height desc) as '키 큰 순위' , userName,addr,height
from userTBL;

--지역별로 다시 순위 매김=> partition by addr
select RANK()over(partition by addr order by height desc) as '키 큰 순위' , userName,addr,height
from userTBL;

--PIVOT
/*create table pivotTBL
(
	userName nvarchar(10),
	season nvarchar(2),
	amount int
);

insert into pivotTBL values
('김범수','겨울',10),
('윤종신','여름',15),
('김범수','가을',25),
('김범수','봄',3),
('김범수','봄',37),
('윤종신','겨울',40),
('김범수','여름',14),
('김범수','겨울',22),
('윤종신','여름',64);
go
*/

insert into pivotTBL values('성시경','여름','30');
select * from pivotTBL;

select * from pivotTBL
	pivot(sum(amount)
			for season
			in ([봄],[여름],[가을],[겨울])) as resultPivot;

--json

select userName, height, addr, userID
  from userTBL
 where addr ='서울'
   for json auto;


