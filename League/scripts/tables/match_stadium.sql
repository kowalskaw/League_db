USE [League]
GO

/****** Object:  Table [dbo].[MatchStadium]    Script Date: 08.06.2019 16:51:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MatchStadium](
	[MatchID] [smallint] NOT NULL,
	[StadiumID] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MatchStadium]  WITH CHECK ADD  CONSTRAINT [FK_MatchStadium_Match] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO

ALTER TABLE [dbo].[MatchStadium] CHECK CONSTRAINT [FK_MatchStadium_Match]
GO

ALTER TABLE [dbo].[MatchStadium]  WITH CHECK ADD  CONSTRAINT [FK_MatchStadium_Stadium] FOREIGN KEY([StadiumID])
REFERENCES [dbo].[Stadium] ([StadiumID])
GO

ALTER TABLE [dbo].[MatchStadium] CHECK CONSTRAINT [FK_MatchStadium_Stadium]
GO


