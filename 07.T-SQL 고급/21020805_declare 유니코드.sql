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

--
select*from buyTBl;


select userID, avg(convert (float,amount))-- amount에서 float로 바꾼 이유=> 평균값이기 때문에 소수점이 나옴 amount는 정수값이이기 때문에 float로 바꿔줘야함
 as '평균구매개수' from buyTBl
group by userID;

select TRY_CONVERT(float, amount) as amount from buyTBl;


select prodName,price,amount, price/amount as [단가/수량] from buyTBl;


--
'1000'--> 숫자
select parse('2021년 2월 9일'as date) ;--> 년 월 일 이 하이푼으로 바뀜(date형식으로 바뀜)

select TRY_PARSE('2021년 2월 39일'as date);--> TRY 함수는 값이 틀려 제대로 나오지 않을 때 오류가 아닌 NULL값이 나올 수 있게 해줌(위에 것과 비교해보기)

select parse('123.45' as int);--> 123.45는 정수가 아니기 때문에 오류가 나옴
select TRY_PARSE('123.45'as int);--> 오류 대신 NULL이 나옴

select cast(amount as float)
select DAY(GETDATE());

-- 스칼라 함수(단일 리턴함수)
select GETDATE() as'현재날짜';

select year(getdate()) as '금년'

select abs(-100);--절대값

select round(3.123124,3);
select round(3.123124,-1);

select cast(rand()*100 as int);--랜덤 값

select iif(50>cast(rand()*100 as int),'참','거짓');

--문자열 함수

select ascii('a'), acsii('A');
select char('65');

--진짜 많이 쓰는 문자열 함수
select CONCAT('SQL','sever',2019); --SQL+sever+2019

--문자열 위치 리턴
select CHARINDEX('server','SQL server 2016');
--left,right
select RIGHT('SQL server 2016',4),LEFT('SQL server 2016',4);

--substring
select SUBSTRING('HELLO WORLD',7,5);
select SUBSTRING('아 제발 이 부분만 나와라',6 ,10);
--len
select len('야 너도 나두');--7

--lower, upper
select LOWER('asdsadSDADSAD');
--LTRIM,RTRIM,
SELECT LEN(LTRIM('           HELLO WORLD          ')),
	   LEN(RTRIM('           HELLO WORLD         ')),
	   LEN(TRIM('         HELLO WORLD            '));

SELECT REPLACE('HELLO WORLD','WORLD','배고파');


SELECT FORMAT(GETDATE(),'');--기본
SELECT FORMAT(GETDATE(),'dd/MM/yyyy');
SELECT FORMAT(GETDATE(),'yyyy-MM-dd hh:mm:ss:ms');
SELECT FORMAT(GETDATE(),'MM');
SELECT FORMAT(GETDATE(),'dd');
SELECT FORMAT(GETDATE(),'');
SELECT FORMAT(GETDATE(),'');
SELECT FORMAT(GETDATE(),'');

select ASCII('ㅇ');

select char(5);

select CONCAT('나','지금','배 너무 고프다');

select CHARINDEX( 'will','i will always remember');

select CHARINDEX( '뭐해', '너는 지금 뭐해' );--> 문자열 위치를 숫자로 

select LEFT('자니? 밖이야',3);
select right('자니? 밖이야',3);

select SUBSTRING('이건 정말 뭔지',2,4)

select len('아 배고파');

select LOWER('sadasdDSA');

SELECT UPPER('Sdsasdad');

select LTRIM('      야 왼쪽 공백 없애주는 거 알지?    ');

select RTRIM('       야 이건 오른쪽이다       ');

select FORMAT('와 진짜 배고파',3)


select iif(50>cast(RAND()*100 as int), '내가 이김','너가 짐')













