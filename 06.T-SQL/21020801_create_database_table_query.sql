use tempdb;
go

create database sqlDB;
go

--DB����

use sqlDB;
go

create table userTBL--ȸ�����̺�
(
	userID char(8) NOT null primary key,--����ھ��̵�
	username nvarchar(10) Not null,--�̸�//name�� Ű�����̱� ������ �����ؼ� ������� ���� �ٲ㼭 ����ϴ� ���� ���� 
	birthyear int not null, -- �������
	addr nchar(2) not null,--����(���,����,�泲 ������ 2���ڸ� �Է�)
	moblie1 char(3), --�޴����� ����(011,016,017,018,019,010 ��)
	moblie2 char(8),--�޴����� ������ ��ȭ��ȣ(����������)
	height smallint, --Ű
	mdate date--ȸ�� ������
);
go

create table buyTBl --ȸ�� ���� ���̺�
(
	num int identity not null primary key,--����
	userID char(8) not null--���̵�(FK)
	foreign key references userTBL(userID),
	prodName Nchar(6) not null,--��ǰ��
	groupName nchar(4),--�з�
	price int not null,--�ܰ�
	amount smallint not null--����
);
go

