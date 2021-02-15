use sqlDB;
go

create or alter procedure usp_buyproduct
	@userID char(8)
as
	select num, userID, prodName,(price*amount) as 구매가격
	  from buyTBl
	  where userID = @userID;
go

exec usp_buyproduct 'BBK';