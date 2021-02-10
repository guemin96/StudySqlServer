declare @var1 int;
set @var1 = 100;

if @var1 = 100
begin
	select '@var1 100임'	
end

else
begin
	select '@var1 100아님'
end

declare @year int; -- 년도 변수를 넣는 
set @year = 1969;

if @year>=1970
begin
	select * from userTBL where birthyear >=@year 
end
else
begin
	select * from userTBL where birthyear<@year
end


