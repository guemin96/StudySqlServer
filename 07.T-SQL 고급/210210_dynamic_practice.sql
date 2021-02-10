use sqlDB;
go

exec sp_helpdb;

declare @sql varchar(100);
    set @sql = 'select * from userTBL where userID=''EJW''; '
   exec (@sql);-- 괄호 꼭 넣기 안넣으면 실행되지 않음