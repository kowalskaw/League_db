USE [League]
GO

/****** Object:  Table [dbo].[MatchSeason]    Script Date: 08.06.2019 16:50:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MatchSeason](
	[MatchID] [smallint] NOT NULL,
	[SeasonID] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MatchSeason]  WITH CHECK ADD  CONSTRAINT [FK_MatchSeason_Match] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO

ALTER TABLE [dbo].[MatchSeason] CHECK CONSTRAINT [FK_MatchSeason_Match]
GO

ALTER TABLE [dbo].[MatchSeason]  WITH CHECK ADD  CONSTRAINT [FK_MatchSeason_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO

ALTER TABLE [dbo].[MatchSeason] CHECK CONSTRAINT [FK_MatchSeason_Season]
GO


