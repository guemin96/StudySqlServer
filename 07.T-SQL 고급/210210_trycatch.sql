
select * from userTBL

begin try
	insert into userTBL values('LSG','�̻�',1988,'���',null,null,170,GETDATE());--�̽±� PK���̶� �ߺ���
	print '���强��';
end try

begin catch
	print '�������,�����ڿ��� ���� ��û';
end catch