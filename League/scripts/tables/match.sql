USE [League]
GO

/****** Object:  Table [dbo].[Match]    Script Date: 08.06.2019 16:50:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Match](
	[MatchID] [smallint] NOT NULL,
	[HostID] [smallint] NOT NULL,
	[VisitorID] [smallint] NOT NULL,
	[TicketsSold] [int] NULL,
	[MatchDate] [date] NOT NULL,
	[WinnerID] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team] FOREIGN KEY([HostID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team]
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [FK_Match_Team1] FOREIGN KEY([VisitorID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [FK_Match_Team1]
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([HostID]<>[VisitorID]))
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([WinnerID]=[HostID] OR [WinnerID]=[VisitorID]))
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([HostID]>(0)))
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([MatchDate]<=getdate()))
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([MatchID]>(0)))
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([TicketsSold]>(0)))
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([VisitorID]>(0)))
GO

ALTER TABLE [dbo].[Match]  WITH CHECK ADD CHECK  (([WinnerID]>(0)))
GO


