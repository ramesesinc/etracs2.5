/****** Object:  Table [dbo].[businessrequirement]    Script Date: 11/11/2013 08:41:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[businessrequirement](
	[objid] [varchar](50) NOT NULL,
	[code] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[account_objid] [varchar](50) NULL,
	[account_code] [varchar](50) NULL,
	[account_title] [varchar](50) NULL,
 CONSTRAINT [PK_businessrequirement] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO