select * from divtbl
select * from bookstbl

select d.Names,
	   sum(b.price) as '총합계금액'
  from divtbl as d
 inner join bookstbl as b
    on d.Division=b.Division
	group by rollup(d.Names)