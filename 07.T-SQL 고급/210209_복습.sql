use sqlDB;
go

declare @var1 int;
declare @var2 nvarchar(10);
declare @var3 char(10);
declare @var4 decimal(5,1);

set @var1 = 3;
set @var2 = '���ų�����';
set @var3 = 90;
set @var4 = 3.14;

select @var1;
select @var2;
select @var3;
select @var4;

-- CTE ���� ���� 
with CTE_Tmpt(userID,prodName,total)
as
(
select userID,prodName, SUM(price*amount) as 'total'
  from buyTBl
  group by userID, prodName
 )
 select * from CTE_Tmpt order by total
 -- CTE_Tmpt�� �������� as �ؿ� select �������� �����ؾ� ��


 --���� �Լ�

 select userID,min(price) as '�ּҰ�' 
   from buyTBl
  group by userID

 select * 
   from buyTBl
  where price = (select max(price) from buyTBl)
       or price= (select min(price) from buyTBl)

select count(*) from buyTBl


select IIF(50>rand()*100,'��','����')

select concat('��','����','��ƿ �� ������?')