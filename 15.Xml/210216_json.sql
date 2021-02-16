select * from userTBL;

select u.userID, u.username, u.birthyear, u.addr, u.height,b.prodName,b.price
  from userTBL as u
 inner join buyTBl as b
    on u.userID=b.userID
 where height>170
   for json auto;