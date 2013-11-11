SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[certification](
	[objid] [varchar](50) NOT NULL,
	[txnno] [varchar](25) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[refid] [varchar](50) NULL,
	[name] varchar(200) not null,
	[address] varchar(150) not null,
	[requestedby] [text] NOT NULL,
	[requestedbyaddress] [varchar](100) NOT NULL,
	[purpose] [varchar](500) NULL,
	[certifiedby] [varchar](150) NOT NULL,
	[certifiedbytitle] [varchar](50) NOT NULL,
	[byauthority] [varchar](150) NULL,
	[byauthoritytitle] [varchar](50) NULL,
	[orno] [varchar](25) NULL,
	[ordate] [datetime] NULL,
	[oramount] [numeric](16, 2) NOT NULL,
	[stampamount] [numeric](16, 2) NOT NULL,
	[createdbyid] [varchar](50) NULL,
	[createdby] [varchar](150) NOT NULL,
	[createdbytitle] [varchar](50) NOT NULL,
	[office] [varchar](50) NULL,
	[info] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_certification_txnno] UNIQUE NONCLUSTERED 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [refid]
GO

ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [name]
GO

ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [address]
GO

ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [byauthority]
GO

ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [byauthoritytitle]
GO

ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [orno]
GO

ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [ordate]
GO

ALTER TABLE [dbo].[certification] ADD  DEFAULT (NULL) FOR [createdbyid]
GO


