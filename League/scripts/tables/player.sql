USE [League]
GO

/****** Object:  Table [dbo].[Player]    Script Date: 08.06.2019 16:52:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Player](
	[PlayerID] [smallint] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[BirthDate] [date] NULL,
	[Nationality] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Player]  WITH CHECK ADD CHECK  (([BirthDate]<=getdate()))
GO

ALTER TABLE [dbo].[Player]  WITH CHECK ADD CHECK  (([Name]<>''))
GO

ALTER TABLE [dbo].[Player]  WITH CHECK ADD CHECK  (([Nationality]<>''))
GO

ALTER TABLE [dbo].[Player]  WITH CHECK ADD CHECK  (([PlayerID]>(0)))
GO

ALTER TABLE [dbo].[Player]  WITH CHECK ADD CHECK  (([Surname]<>''))
GO


