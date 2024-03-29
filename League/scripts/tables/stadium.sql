USE [League]
GO

/****** Object:  Table [dbo].[Stadium]    Script Date: 08.06.2019 16:53:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Stadium](
	[StadiumID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[City] [varchar](50) NULL,
	[Capacity] [int] NULL,
	[Street] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[StadiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[StadiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Stadium]  WITH CHECK ADD CHECK  (([Capacity]>(0)))
GO

ALTER TABLE [dbo].[Stadium]  WITH CHECK ADD CHECK  (([City]<>''))
GO

ALTER TABLE [dbo].[Stadium]  WITH CHECK ADD CHECK  (([Name]<>''))
GO

ALTER TABLE [dbo].[Stadium]  WITH CHECK ADD CHECK  (([StadiumID]>(0)))
GO

ALTER TABLE [dbo].[Stadium]  WITH CHECK ADD CHECK  (([Street]<>''))
GO


