use sqlDB;
go
create view uv_userTBL
AS
	select userID, userName, addr from userTBL;
go

select * from uv_userTBL
--> ���濡�� �������ǳ��� �ʿ��� ������ �̾Ƽ� ������ �����/���ȿ� ������ �ȴ�.

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
('PGM','�ڱԹ�',1996,'�λ�','','',170,'')


select * from u_height177
order by height desc




------------------------------------------------

select * from buyTBl

create view un_buyTBL
as
	select num,prodName,groupName from buyTBl where groupName ='����'
go

select * from un_buyTBL
insert into un_buyTBL values ('KKH','��Ÿ','�Ǳ�',4000,1)-->view ���� �ȸ±� ������ insert�� ���� �߰��� �� ����.

begin tran; --Ʈ�����

delete from un_buyTBL

rollback


------------------------------------------------------------------------
