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


--inner join 약식(SQL Server T-SQL)
select s.id, s.stbName,c.clubname,c.buildingName
  from ClubTBl as C,ClubRegTBL as R,StbTBL as S
 where s.id=R.std_ID and C.ID=S.ID;

 --outerjoin(외부 조인)
select S.ID,S.stbName,C.buildingName
  from StbTBL as S
  left outer join ClubRegTBL as R-- left or right or full을 꼭 넣어줘야 outer 절이 작동함
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

select u.username,u.addr,b.price-- right를 씀으로써 buyTBL을 기준으로 나타내는데 buyTBL의 userID에는 userTBL. userID에 있는 성시경,조관우 같은 사람들이 없기 때문에 outer join 함수에서 값을 나타내지 않음
  from userTBL as u
  right outer join buyTBl as b
    on u.userID=b.userID;




select * from buyTBl;



