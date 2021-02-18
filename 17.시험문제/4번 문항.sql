select * from divtbl

begin tran

insert into divtbl values ('I002','자기개발서')

rollback
commit


select * from membertbl
where Names='성명건'

begin tran
update membertbl
   set Addr = '부산시 해운대구',
       Mobile = '010-6683-7732'
	where Names='성명건'
rollback
commit