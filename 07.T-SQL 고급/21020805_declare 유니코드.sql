use sqlDB;
go

declare @myVar1 int;
declare @myVar2 smallint,@myVar3 decimal(5,2);--decimal(전체 길이(a), 소수점 길이(b))-> a가 항상 b보다 커야된다 
declare @myVar4 char(20);


set @myVar1 = 154234521;
set @myVar2 = 32000;
set @myVar3 = 3.14;
set @myVar4 = '가수 이름==>     ';

select @myVar1;
select @myVar2+@myVar3;--만약 앞의 값이 숫자로 된 문자일 경우 숫자로 계산한다.
select '100'+@myVar3;
select @myVar4, userName from userTBL where height>180;


declare @myVar5 tinyint ;
set @myVar5 =3;

select top(@myVar5) userID,username,height from userTBL order by height desc;

select @@VERSION;--분홍색으로 나오는 것은 시스템 변수(주로 @@ 2개가 나옴), @ 1개는 사용자가 직접 만드는 변수







