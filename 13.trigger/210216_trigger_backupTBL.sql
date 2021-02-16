USE [sqlDB]
GO

CREATE TABLE [dbo].[backup_userTBL](
	[userID] [char](8) NOT NULL primary key,
	[username] [nvarchar](10) NOT NULL,
	[birthyear] [int] NOT NULL,
	[addr] [nchar](2) NOT NULL,
	[moblie1] [char](3) NULL,
	[moblie2] [char](8) NULL,
	[height] [smallint] NULL,
	[mdate] [date] NULL,
	modetype nchar(2), --변경된 타입 '수정', '삭제'
	modDate date, --변경된 날짜
	modUser nvarchar(200) --변경된 사용자
)
GO


