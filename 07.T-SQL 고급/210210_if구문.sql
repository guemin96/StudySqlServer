declare @var1 int;
set @var1 = 100;

if @var1 = 100
begin
	select '@var1 100��'	
end

else
begin
	select '@var1 100�ƴ�'
end

declare @year int; -- �⵵ ������ �ִ� 
set @year = 1969;

if @year>=1970
begin
	select * from userTBL where birthyear >=@year 
end
else
begin
	select * from userTBL where birthyear<@year
end


