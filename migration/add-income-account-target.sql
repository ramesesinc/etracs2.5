USE [etracs_iligan]
GO

/****** Object:  Table [dbo].[account_incometarget]    Script Date: 11/06/2013 08:37:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[account_incometarget](
	[objid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[target] [decimal](18, 2) NULL,
 CONSTRAINT [PK_account_incometarget] PRIMARY KEY CLUSTERED 
(
	[objid] ASC,
	[year] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[account_incometarget]  WITH CHECK ADD  CONSTRAINT [FK_account_incometarget_account] FOREIGN KEY([objid])
REFERENCES [dbo].[account] ([objid])
GO

ALTER TABLE [dbo].[account_incometarget] CHECK CONSTRAINT [FK_account_incometarget_account]
GO


