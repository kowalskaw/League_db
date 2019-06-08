USE [League]
GO

/****** Object:  Table [dbo].[TeamCoach]    Script Date: 08.06.2019 16:53:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TeamCoach](
	[TeamID] [smallint] NOT NULL,
	[CoachID] [smallint] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[TeamCoach]  WITH CHECK ADD  CONSTRAINT [FK_TeamCoach_Coach] FOREIGN KEY([CoachID])
REFERENCES [dbo].[Coach] ([CoachID])
GO

ALTER TABLE [dbo].[TeamCoach] CHECK CONSTRAINT [FK_TeamCoach_Coach]
GO

ALTER TABLE [dbo].[TeamCoach]  WITH CHECK ADD  CONSTRAINT [FK_TeamCoach_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO

ALTER TABLE [dbo].[TeamCoach] CHECK CONSTRAINT [FK_TeamCoach_Team]
GO


