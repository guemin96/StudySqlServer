use sqlDB;
go
create view uv_userTBL
AS
	select userID, userName, addr from userTBL;
go

select * from uv_userTBL
--> 상대방에서 정보를건낼때 필요한 정보만 뽑아서 보낼때 사용함/보안에 도움이 된다.

use sqlDB;
go

create view un_stdclubTBL
as
	select S.ID,S.stbName,C.buildingName
  from ClubTBl as C
 inner join ClubRegTBL as R
    on R.std_ID=C.ID
 inner join StbTBL as S
	on R.std_ID=S.ID;
go

select * from un_stdclubTBL;


create view u_height177
as
	select *
	from userTBL
	where height>=177;
go

select * from u_height177
order by height desc

insert into u_height177 values
('PGM','박규민',1996,'부산','','',170,'')


select * from u_height177
order by height desc




------------------------------------------------

select * from buyTBl

create view un_buyTBL
as
	select num,prodName,groupName from buyTBl where groupName ='전자'
go

select * from un_buyTBL
insert into un_buyTBL values ('KKH','기타','악기',4000,1)-->view 열이 안맞기 때문에 insert를 통해 추가할 수 없다.

begin tran; --트랜잭션

delete from un_buyTBL

rollback


------------------------------------------------------------------------
