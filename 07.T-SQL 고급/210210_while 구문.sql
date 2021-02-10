
declare @i int,@hap bigint = 0;

set @i =1

while(@i<=100)
  begin
   if (@i%7=0)
   begin
	print concat('7ÀÇ¹è¼ö==>',@i);
	set @i +=1;
	continue;
   end

	set @hap+=@i

	 if (@hap>1000) break
	set @i += 1

	
end

print @hap;
