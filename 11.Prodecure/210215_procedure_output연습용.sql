use sqlDB
go

select *from pracTBL


create or alter procedure up_pracTBL

	@text  nvarchar(20),
	@num  int output

as
	insert into pracTBL values (@text)
	select @num = IDENT_CURRENT('pracTBL')

go



declare @num1 int

exec up_pracTBL '제발이게맞아라!!',@num1 output


print concat('이게 맞나?',@num1)




