use tempdb;
go

create database sqlDB;
go

--DB생성

use sqlDB;
go

create table userTBL--회원테이블
(
	userID char(8) NOT null primary key,--사용자아이디
	username nvarchar(10) Not null,--이름//name은 키워드이기 때문에 웬만해서 사용하지 말고 바꿔서 사용하는 것이 좋음 
	birthyear int not null, -- 출생연도
	addr nchar(2) not null,--지역(경기,서울,경남 식으로 2글자만 입력)
	moblie1 char(3), --휴대폰의 국번(011,016,017,018,019,010 등)
	moblie2 char(8),--휴대폰의 나머지 전화번호(하이픈제외)
	height smallint, --키
	mdate date--회원 가입일
);
go

create table buyTBl --회원 구매 테이블
(
	num int identity not null primary key,--순번
	userID char(8) not null--아이디(FK)
	foreign key references userTBL(userID),
	prodName Nchar(6) not null,--물품명
	groupName nchar(4),--분류
	price int not null,--단가
	amount smallint not null--수량
);
go

