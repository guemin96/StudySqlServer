use sqlDB;
go

create or alter procedure usp_ifelse
	@userName nvarchar(10)
as
	declare @birthYear int;-- ����⵵ ���� ����, userTBL�ȿ� �ִ� ����� ������ �������� ���� @birthYear�̶�� ������ ������
	select @birthYear = birthYear 
	  from userTBL
	 where userName = @userName;

	 if (@birthYear>= 1980) -- ������ ������ ���� �� �ϴ� ����
	 begin
		print '1980�� ����';
	 end
	 else
	 begin
		print '1980�� ����';
	 end
go
_





