select * from StbTBL;
select * from ClubTBL;
select * from ClubRegTBL;

--standard SQL
select S.ID,S.stbName,C.buildingName
  from ClubTBl as C
 inner join ClubRegTBL as R
    on R.std_ID=C.ID
 inner join StbTBL as S
	on R.std_ID=S.ID;


--inner join ���(SQL Server T-SQL)
select s.id, s.stbName,c.clubname,c.buildingName
  from ClubTBl as C,ClubRegTBL as R,StbTBL as S
 where s.id=R.std_ID and C.ID=S.ID;

 --outerjoin(�ܺ� ����)
select S.ID,S.stbName,C.buildingName
  from StbTBL as S
  left outer join ClubRegTBL as R-- left or right or full�� �� �־���� outer ���� �۵���
    on s.ID=r.std_ID
  left outer join ClubTBl as C
	on c.ID=r.std_ID;

select *
  from buyTBl;

--userTBL/buyTBL
select u.username,u.addr,b.price
  from userTBL as u
  left outer join buyTBl as b
    on u.userID=b.userID;

select u.username,u.addr,b.price-- right�� �����ν� buyTBL�� �������� ��Ÿ���µ� buyTBL�� userID���� userTBL. userID�� �ִ� ���ð�,������ ���� ������� ���� ������ outer join �Լ����� ���� ��Ÿ���� ����
  from userTBL as u
  right outer join buyTBl as b
    on u.userID=b.userID;




select * from buyTBl;



