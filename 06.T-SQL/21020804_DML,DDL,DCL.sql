--testTBL insert
use sqlDB
go

--DML �� select
select *from testTBL1;

--DML �� insert
insert into testTBL1 values(1,'ȫ�浿',25);
insert into testTBL1(id, userName) values(2,'�����');
insert into testTBL1(id, userName) values(3,'ȫ���');
insert into testTBL1(age, Id) values(30,4);
--insert into testTBL1(userName,age) values('�����',24); ������! PK(ID)�� �� ���� �־������

insert into testTBL1 values ('���ð�',23);
insert into testTBL1 values ('���ð�',23);
insert into testTBL1 values ('���ð�',23);
insert into testTBL1 values ('���ð�',23);
insert into testTBL1 values ('���ð�',23);
insert into testTBL1 values ('���ð�',23);
insert into testTBL1 values ('���ð�',23);

exec sp_help 'testTBL1';

--
select IDENT_CURRENT('testTBL1');

select @@IDENTITY;

select *from BikeStores.sales.order_items;

select *from ShopDB.dbo.memberTbl;

--sales.order_items ���̺� ����
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
   set userName ='������',
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