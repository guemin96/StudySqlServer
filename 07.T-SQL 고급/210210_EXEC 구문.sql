declare @curDate date;
declare @curYear varchar(4);
declare @curMonth varchar(2);
declare @curDay varchar(2);
declare @sql varchar(2000);;

set @curDate = GETDATE();
set @curYear=YEAR(@curDate);
set @curMonth=MONTH(@curDate);
set @curDay=DAY(@curDate);

print @curDate;
print @curYear;
print replicate('0',2-len (@curMonth))+@curMonth;-- replicate ('a','b') a를 b만큼 반복해준다
print right(('00'+@curMonth),2)
print format(@curDate,'MM')
print @curday;

set @sql ='create table backup__'+FORMAT(@curDate,'yyyy_MM_dd');
set @sql +='(id int not null primary key,bNam nvarchar(100) not null);';
print @sql
exec(@sql)--@sql을 실행시키는 값(여기서는 create table이기 때문에 테이블을 생성) 