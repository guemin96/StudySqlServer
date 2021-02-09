--
select *
  from StbTBL as s
  left outer join ClubRegTBL as r
    on s.ID=r.std_ID
  full outer join ClubTbl as C-- select 옆 테이블 양쪽 다 계산함
    on c.ID=r.club_ID;

--
select *
  from StbTBL as s
  left outer join ClubRegTBL as r -- select 옆 테이블을 기준으로 왼쪽열부터 계산
    on s.ID=r.std_ID

select *
  from ClubRegTBL as r
  right outer join ClubTBl as c-- select 옆 테이블을 기준으로 오른쪽 열부터 계산
	on r.club_ID=c.ID

select * from ClubRegTBL