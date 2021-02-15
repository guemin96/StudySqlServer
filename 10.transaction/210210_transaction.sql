use tempdb;
create table bankbook
(
uName Nvarchar(10),
uMoney int,
	constraint CK_money
	     check (uMoney >= 0)
);
go
insert into bankbook values (N'구매자',1000);
insert into bankbook values (N'판매자',0);

update bankbook set uMoney = uMoney-500 where uName =N'구매자';
update bankbook set uMoney = uMoney+500 where uName =N'판매자';
select * from bankbook

begin tran
	update bankbook set uMoney = uMoney-500 where uName =N'구매자';
commit tran

begin tran
	update bankbook set uMoney = uMoney+500 where uName =N'판매자';
commit tran

update bankbook set uMoney = uMoney-600 where uName =N'구매자';
update bankbook set uMoney = uMoney+600 where uName =N'판매자';
select * from bankbook

begin tran
	update bankbook set uMoney = uMoney-600 where uName =N'구매자';
	update bankbook set uMoney = uMoney+600 where uName =N'판매자';
commit tran
select* from bankbook;

update bankbook set uMoney = uMoney-600 where uName =N'판매자';


begin try
	begin tran
		update bankbook set uMoney = uMoney-600 where uName =N'구매자';
		update bankbook set uMoney = uMoney+600 where uName =N'판매자';
	commit tran


end try
begin catch
	rollback tran
end catch
select * from bankbook;

