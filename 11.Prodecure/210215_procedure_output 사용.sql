USE [sqlDB]
GO

select * from testTBL;

--���ν��� ���� �Ǵ� ������ ���ÿ�
create or alter procedure usp_users4
	@txtValue nvarchar(20),
	@outValue int output--���Ϲ޴� �Ű�����(�Ķ����)
as
	insert into testTBL values (@txtValue);
	select @outValue = IDENT_CURRENT('testTBL');-- testTBL�� ���� ���̵�ƼƼ ���� ������
GO

declare @pout int;

exec usp_users4 '5��° �ؽ�Ʈ',@pout output;

select @pout


print concat('���� �Էµ� ���� ==>',@pout);




