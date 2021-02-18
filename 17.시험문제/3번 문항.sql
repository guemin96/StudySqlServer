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






