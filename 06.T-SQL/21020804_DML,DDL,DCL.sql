--testTBL insert
use sqlDB
go

--DML 중 select
select *from testTBL1;

--DML 중 insert
insert into testTBL1 values(1,'홍길동',25);
insert into testTBL1(id, userName) values(2,'성명건');
insert into testTBL1(id, userName) values(3,'홍길순');
insert into testTBL1(age, Id) values(30,4);
--insert into testTBL1(userName,age) values('성명건',24); 에러남! PK(ID)는 꼭 값을 넣어줘야함

insert into testTBL1 values ('성시경',23);
insert into testTBL1 values ('성시경',23);
insert into testTBL1 values ('성시경',23);
insert into testTBL1 values ('성시경',23);
insert into testTBL1 values ('성시경',23);
insert into testTBL1 values ('성시경',23);
insert into testTBL1 values ('성시경',23);

exec sp_help 'testTBL1';

--
select IDENT_CURRENT('testTBL1');

select @@IDENTITY;

select *from BikeStores.sales.order_items;

select *from ShopDB.dbo.memberTbl;

--sales.order_items 테이블 복사
CREATE TABLE [sales_order_items](
	[order_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
	[discount] [decimal](4, 2) NOT NULL,
);


insert into sales_order_items
select * from BikeStores.sales.order_items;

select* from sales_order_items;

use sqlDB;

--update
select *from testTBL1;

update testTBL1
   set userName ='성수경',
	   age = 30 
 where id=6;

 --delete
 delete from testTBL1 where id =12;

 use BikeStores;
 go

 select * from sales.customers
 where last_name like 'S%' 
   and state ='NY'
   and phone is not null 
 order by first_name asc;