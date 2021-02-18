--1번 문항 점검 1,2
select lower(Email) as email, Mobile,Names,Addr
  from membertbl
  order by Names desc

select Idx, Names, Author, ReleaseDate,Price
  from bookstbl

--2번 문항 점검 1,2

select * from membertbl

select concat(right(Names,2),',',LEFT(names,1)) as '변경이름'
	 , Levels
	 , left(Addr,2) as 도시
	 , lower(Email) as 이메일
  from membertbl

select * from bookstbl

select idx
     , concat('제목 : ',Names) as 'Names'
	 , concat('저자 > ',Author) as 'Author'
	 , format(ReleaseDate,'yyyy년 MM월 dd일') as '출판일'
	 , ISBN
	 , concat(format(Price,'#,#'),'원') as '가격'
  from bookstbl
  order by Idx desc


--3번 문항 점검 1,2

select * from bookstbl
select * from divtbl

select b.Idx as 번호
     , b.Division as 장르번호
	 , d.Names as 장르
	 , b.Names as 책제목 
	 , b.Author as 저자
  from bookstbl as b
 inner join divtbl as d
    on b.Division=d.Division
 where d.Names='로맨스'



 select * from membertbl
select * from rentaltbl


select m.Names
     , m.Levels
	 , m.Addr
	 , r.rentalDate
  from membertbl as m
  left outer join rentaltbl as r
    on m.Idx = r.memberIdx
	where rentalDate is null

--4번 문항 점검 1,2


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

--5번 문항 점검 1,2
select * from divtbl
select * from bookstbl

select d.Names as names,
	   sum(b.price) as '총합계금액'
  from divtbl as d
 inner join bookstbl as b
    on d.Division=b.Division
	group by rollup(d.Names)