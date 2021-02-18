-- outer join 쿼리
select r.rentalidx
    -- , r.memberidx
	 , m.memberName
     --, r.bookidx
	-- , b.cateIdx
	 , c.cateName
	 , b.bookName
	 , b.author
     , format(r.rentaldt,'yyyy-MM-dd') as '대출날짜'
     , format(r.returndt,'yyyy-MM-dd') as '반납날짜'
     , dbo.ufn_getState(r.rentalstate) as '책 상태'
  from rentaltbl as r
 right outer join memberTBL as m
    on r.memberIdx=m.memberIdx
  left outer join booksTBL as b
    on r.bookIdx=b.bookIdx
  left outer join cateTBL as c
    on b.cateIdx=c.cateIdx
  where rentalIdx is null;

  -- 데이터 입력
 
insert into booksTBL
(
	 cateIdx,
	 bookName,
	 author,
	 company,
	 releaseDate,
	 ISBN,
	 price

)
values
(
	 'N0002',
	 '순수하지 않은 감각',
	 '요안나',
	 '로코코',
	 '2019-10-02',
	 '9791135445705',
	 12500
);

select * from booksTBL

-- 책테이블 위 책 정보중 설명, 등록일자 수정
begin tran;
--select * from booksTBL
update booksTBL
   set descriptions = '부명그룹의 브레인이자 핵심 TF팀 리더, 강태욱 수석.
교육자 부모 아래서 보수적이고 모범적으로 자랐지만,
원하는 건 무조건 손에 넣어야 하는 집요한 남자.
그런 그를 자꾸 낯선 충동에 시달리게 하는 여자가 나타났다.
그녀는 바로 협력사 KJ 신기주 대표의 유능한 비서, 임정은.
'
	 , regDate = '2021-02-17'
 where bookIdx = '12'-- where은 필수 안했을 경우 

 rollback;
commit

-- 카테고리 입력
begin tran
insert into cateTBL values 
			--('I0001','대화/협상'),
			--('I0002','성공/처세'),
			('I0003','시간관리'),
			('I0004','인간관계'),
			('I0005','자기능력계발');

select * from cateTBL

rollback;
commit;
begin tran
delete from cateTBL where cateIdx = 'I0005'

delete from cateTBL where cateIdx in ('I0003','I0004')

delete from cateTBL where cateIdx = 'I0005' or cateIdx = 'I0004' or cateIdx = 'I0003'

-- and의 경우에는 where 절에 적힌 모든 값을 적용해야 되기 때문에 안되는 것임

rollback
commit

