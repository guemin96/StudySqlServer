select *from userTBL;
select *from buyTBl;

select * from userTBL where userID='JYP';
select * from buyTBl where userID='JYP';

select * from buyTBl where userID='BBK';

--INNER JOIN
select * 
  from buyTBl
  inner join userTBL
  on buyTBl.userID=userTBL.userID
 where buyTBl.userID='JYP';


 select u.username,u.addr,
		CONCAT(u.moblie1,'-',left(u.moblie2,4),'-',RIGHT(u.moblie2,4) ) ,
		b.prodName,b.price,b.amount
  from buyTBl as b
  inner join userTBL as u
  on b.userID=u.userID
 where b.userID='JYP';

 select *
 from buyTBl
 inner join userTBL
 on buyTBl.userID=userTBL.userID
 where buyTBl.userID='JYP'

