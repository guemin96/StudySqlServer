USE [sqlDB]
GO

select * from testTBL;

--���ν��� ���� �Ǵ� ������ ���ÿ�
create or alter procedure usp_users4
	@txtValue nvarchar(20),
	@outValue int output--���Ϲ޴� �Ű�����(�Ķ����)
as
	insert into testTBL values (@txtValue);--testTBL�̶�� ���̺� @txtValue���� �����Ѵ�.
	select @outValue = IDENT_CURRENT('testTBL');-- testTBL�� ���� ���̵�ƼƼ ���� ������
GO

declare @pout int;

exec usp_users4 '5��° �ؽ�Ʈ',@pout output; --�����Ҷ����� @txtValue �ڸ��� ����ؼ� �߰���

select @pout


print concat('���� �Էµ� ���� ==>',@pout);




