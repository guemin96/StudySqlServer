use sqlDB;
go

declare @myVar1 int;
declare @myVar2 smallint,@myVar3 decimal(5,2);--decimal(��ü ����(a), �Ҽ��� ����(b))-> a�� �׻� b���� Ŀ�ߵȴ� 
declare @myVar4 char(20);


set @myVar1 = 154234521;
set @myVar2 = 32000;
set @myVar3 = 3.14;
set @myVar4 = '���� �̸�==>     ';

select @myVar1;
select @myVar2+@myVar3;--���� ���� ���� ���ڷ� �� ������ ��� ���ڷ� ����Ѵ�.
select '100'+@myVar3;
select @myVar4, userName from userTBL where height>180;


declare @myVar5 tinyint ;
set @myVar5 =3;

select top(@myVar5) userID,username,height from userTBL order by height desc;

select @@VERSION;--��ȫ������ ������ ���� �ý��� ����(�ַ� @@ 2���� ����), @ 1���� ����ڰ� ���� ����� ����







