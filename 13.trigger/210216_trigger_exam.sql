use sqlDB;
go

create trigger trg_testtbl
on testtbl
after delete, update -- 삭제,수정할때 트리거 발생
as
	print '새트리거 발생';

insert into testTBL values ('BTS');
select * from testTBL where txt='마마무';
select * from testTBL where txt='마마무뉴!';
update testTBL set txt ='마마무뉴!' where id =7;
delete testTBL where id =3;