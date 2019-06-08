USE [League]
GO

/****** Object:  Table [dbo].[SeasonTeamPlayer]    Script Date: 08.06.2019 16:52:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SeasonTeamPlayer](
	[SeasonID] [int] NOT NULL,
	[TeamID] [smallint] NOT NULL,
	[PlayerID] [smallint] NOT NULL,
	[PlayerNumber] [smallint] NULL,
	[PlayerPosition] [varchar](30) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[SeasonTeamPlayer]  WITH CHECK ADD  CONSTRAINT [FK_SeasonTeamPlayer_Player] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Player] ([PlayerID])
GO

ALTER TABLE [dbo].[SeasonTeamPlayer] CHECK CONSTRAINT [FK_SeasonTeamPlayer_Player]
GO

ALTER TABLE [dbo].[SeasonTeamPlayer]  WITH CHECK ADD  CONSTRAINT [FK_SeasonTeamPlayer_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO

ALTER TABLE [dbo].[SeasonTeamPlayer] CHECK CONSTRAINT [FK_SeasonTeamPlayer_Season]
GO

ALTER TABLE [dbo].[SeasonTeamPlayer]  WITH CHECK ADD  CONSTRAINT [FK_SeasonTeamPlayer_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[SeasonTeamPlayer] CHECK CONSTRAINT [FK_SeasonTeamPlayer_Team]
GO

ALTER TABLE [dbo].[SeasonTeamPlayer]  WITH CHECK ADD CHECK  (([PlayerNumber]>=(1) AND [PlayerNumber]<=(40)))
GO

ALTER TABLE [dbo].[SeasonTeamPlayer]  WITH CHECK ADD CHECK  (([PlayerPosition]='Midfielder' OR [PlayerPosition]='Substitute' OR [PlayerPosition]='Defender' OR [PlayerPosition]='Forward' OR [PlayerPosition]='Keeper'))
GO


