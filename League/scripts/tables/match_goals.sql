USE [League]
GO

/****** Object:  Table [dbo].[MatchGoals]    Script Date: 08.06.2019 16:50:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MatchGoals](
	[MatchID] [smallint] NOT NULL,
	[GoalID] [smallint] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MatchGoals]  WITH CHECK ADD  CONSTRAINT [FK_MatchGoals_Goal] FOREIGN KEY([GoalID])
REFERENCES [dbo].[Goal] ([GoalID])
GO

ALTER TABLE [dbo].[MatchGoals] CHECK CONSTRAINT [FK_MatchGoals_Goal]
GO

ALTER TABLE [dbo].[MatchGoals]  WITH CHECK ADD  CONSTRAINT [FK_MatchGoals_Match] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO

ALTER TABLE [dbo].[MatchGoals] CHECK CONSTRAINT [FK_MatchGoals_Match]
GO


