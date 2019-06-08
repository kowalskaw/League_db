USE [League]
GO

/****** Object:  Table [dbo].[MatchViolations]    Script Date: 08.06.2019 16:51:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MatchViolations](
	[MatchID] [smallint] NOT NULL,
	[VioltionID] [smallint] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[MatchViolations]  WITH CHECK ADD  CONSTRAINT [FK_MatchViolations_Match] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO

ALTER TABLE [dbo].[MatchViolations] CHECK CONSTRAINT [FK_MatchViolations_Match]
GO

ALTER TABLE [dbo].[MatchViolations]  WITH CHECK ADD  CONSTRAINT [FK_MatchViolations_Violation] FOREIGN KEY([VioltionID])
REFERENCES [dbo].[Violation] ([ViolationID])
GO

ALTER TABLE [dbo].[MatchViolations] CHECK CONSTRAINT [FK_MatchViolations_Violation]
GO


