declare @point int, @credit nchar(1);--credit은 학점
set @point = 80;-- 점수

set @credit =
 case
	when(@point>=90) then 'A'
	when(@point>=80) then 'B'
	when(@point>=70) then 'C'
	when(@point>=60) then 'D'
	else 'F'
end

print N'취득점수 ==>'+ cast(@point as nchar(3))--N을 쓰는 이유는 유니코드로 설정하기 위해서
print concat('취득점수==>',@point)
print '학점==>'+@credit
print concat('학점==>',@credit);

select *
  from buyTBl as b
  left join userTBL as u
	on b.userID=u.userID
 ;


select u.userID,u.username,sum(b.price*b.amount)as '총구매액',
 case
	when( sum(b.price*b.amount)>=1500) then '최우수 고객'
	when( sum(b.price*b.amount)>=1000) then '우수 고객'
	when( sum(b.price*b.amount)>=1) then '일반 고객'
	else '유령 고객'
 end as '고객 등급'

  from buyTBl as b
 right outer join userTBL as u
	on b.userID=u.userID
 group by u.userID,u.username
 order by '총구매액' desc;

 



 select u.userID,
        u.username,
        iif(sum(price*amount) is null,'0',sum(price*amount)) as '총구매금액',
	case
	 when(sum(price*amount)>=1500) then '최우수고객'
	 when(sum(price*amount)>=1000) then '우수고객'
	 when(sum(price*amount)>=1) then '일반고객'
	 else '유령 고객'
    end as '고객 등급'

   from buyTBl as b
  right outer join userTBL as u 
     on b.userID=u.userID
  group by u.userID,u.username
  order by '총구매금액' desc;
  -- buyTBL을 기준으로 join으로 userTBL을 넣었기 때문에 
  -- buyTBL(왼쪽)|userTBL(오른쪽) 이렇게 형성된다. 그래서 left outer의 경우 buyTBL의 열을 기준으로 작성됨
