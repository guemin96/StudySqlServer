--
select *
  from StbTBL as s
  left outer join ClubRegTBL as r
    on s.ID=r.std_ID
  full outer join ClubTbl as C-- select �� ���̺� ���� �� �����
    on c.ID=r.club_ID;

--
select *
  from StbTBL as s
  left outer join ClubRegTBL as r -- select �� ���̺��� �������� ���ʿ����� ���
    on s.ID=r.std_ID

select *
  from ClubRegTBL as r
  right outer join ClubTBl as c-- select �� ���̺��� �������� ������ ������ ���
	on r.club_ID=c.ID

select * from ClubRegTBL