
select * from userTBL

begin try
	insert into userTBL values('LSG','이상구',1988,'경기',null,null,170,GETDATE());--이승기 PK값이랑 중복됨
	print '저장성공';
end try

begin catch
	print '저장실패,관리자에게 문의 요청';
end catch