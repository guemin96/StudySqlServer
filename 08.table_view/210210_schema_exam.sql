use tempdb;
go

create database schemaDB;
go
use schemaDB;
go

create schema users
go
create schema sales;
go
use schemaDB;
go
-- 스키마를 통해 테이블을 나누어 사용자가 보기 쉽게 만들어주는 기능을 한다(큰 프로젝트에서 사용, 데이터 용량 많이 잡아먹기 때문에)
create table users.userTBL(id int not null);
go
create table sales.buyTBL(id int not null);
go
create table sales.prodTBL(pid int);
go

create table normalTBL(nid int not null);
go

select *from users.userTBL;
select *from sales.buyTBL;
select *from sales.prodTBL;


