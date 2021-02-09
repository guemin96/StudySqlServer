use sqlDB;
go

select ROW_NUMBER()over(order by height desc,userName asc) as 'Ű ū ����' , userName,addr,height
from userTBL;
-- Ű�� ���������ϰ� �Ȱ��� �� �ֱ� ������ �̸����� �������� ��


select RANK()over( order by height desc) as 'Ű ū ����' , userName,addr,height
from userTBL;

--�������� �ٽ� ���� �ű�=> partition by addr
select RANK()over(partition by addr order by height desc) as 'Ű ū ����' , userName,addr,height
from userTBL;

--PIVOT
/*create table pivotTBL
(
	userName nvarchar(10),
	season nvarchar(2),
	amount int
);

insert into pivotTBL values
('�����','�ܿ�',10),
('������','����',15),
('�����','����',25),
('�����','��',3),
('�����','��',37),
('������','�ܿ�',40),
('�����','����',14),
('�����','�ܿ�',22),
('������','����',64);
go
*/

insert into pivotTBL values('���ð�','����','30');
select * from pivotTBL;

select * from pivotTBL
	pivot(sum(amount)
			for season
			in ([��],[����],[����],[�ܿ�])) as resultPivot;

--json

select userName, height, addr, userID
  from userTBL
 where addr ='����'
   for json auto;


