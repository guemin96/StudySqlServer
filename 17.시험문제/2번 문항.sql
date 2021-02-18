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

