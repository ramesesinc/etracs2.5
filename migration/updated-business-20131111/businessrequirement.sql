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

ALTER TABLE business ADD activeyear int;
ALTER TABLE business ADD branchname varchar(255);

ALTER TABLE business DROP CONSTRAINT DF__business__bin__4EB3945D;
ALTER TABLE business DROP CONSTRAINT uid_bin;
ALTER TABLE business DROP COLUMN bin;

ALTER TABLE business DROP CONSTRAINT DF__business__unpaid__5E7FE7D2;
ALTER TABLE business DROP CONSTRAINT DF__business__lastqt__5F740C0B;
ALTER TABLE business DROP CONSTRAINT DF__business__lastye__60683044;


ALTER TABLE business DROP COLUMN unpaidbalance;
ALTER TABLE business DROP COLUMN lastqtrpaid;
ALTER TABLE business DROP COLUMN lastyearpaid;


