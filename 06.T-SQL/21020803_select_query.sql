use sqlDB;
go

--�̸��� ���ȣ�� ����� ��ȸ
select * from userTBL
 where username ='���ȣ';

--1970�� ���� ����� Ű�� 182�̻��� ��� ���̵�, �̸��� ��ȸ
select userID, userName, height
  from userTBL
 where birthyear >= 1970
and height >=182
and username like '��%';

--1970�� ���� ����̰ų� Ű�� 182�̻��� ����� ���
select userID, userName, height
  from userTBL
 where birthyear >= 1970
or height >=182;

--Ű�� 180���� 183���� ����� ��ȸ
select userID, userName, height
  from userTBL
 where height>= 180
and height <=183;

--between and ����
select userID, userName, height
  from userTBL
 where height between 180 and 183;

--������ �泲, ����, ���
select userID, userName, height, addr
  from userTBL
 where addr ='�泲'
	or addr ='����'
	or addr ='���';

select userID, userName, addr
  from userTBL
 where addr in('�泲','����','���');


select userID, userName, addr
  from userTBL
 where username like '��%';


select userID, userName, addr
  from userTBL
 where username like '_����';

---subquery
select username, height 
  from userTBL
 where height > 
	(select height from userTBL where username='���ȣ');

---subquery
select username, height, addr 
  from userTBL
 where height >= all
	(select height from userTBL where addr='�泲');

select username, height, addr 
  from userTBL
 where height =any
	(select height from userTBL where addr='�泲');


--order by ����
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

  --���� 
  select * into buyTBL2 from buyTBl;
  
  select userID,prodName into buyTBL3 from buyTBl;


  --Group By
  
  select userID, amount
    from buyTBl
   order by userID;

 select userID, sum(amount) as '�����հ�'
   from buyTBl
  group by userID;


 --min,max

 select userID,username, min(height) as '�ּ�Ű',max(height) as '�ִ�Ű'
   from userTBL
   group by userID,username;

select userID, username 
  from userTBL
  where height =(select min(height)from userTBL)
  or height=(select max(height) from userTBL)

-- �� �������� ����
select count(*) as 'ȸ����' from userTBL;
select count(*) as '���ų�����' from buyTBl;


use sqlDB;
go

select * from userTBL;

update userTBL
set height =166
where userID ='JYP'


