alter table afserial_inventory 
	add cost decimal(10,2) null 
GO

alter table afserial_inventory_detail 
	add cost decimal(10,2) null 
GO	

alter table cashticket_inventory 
	add cost decimal(10,2) null 
GO	

alter table cashticket_inventory_detail 
	add cost decimal(10,2) null 
GO	
	
alter table stockreceiptitem
	add cost decimal(10,2) null
GO	
	
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[stocksale](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](50) NULL,
	[request_objid] [varchar](50) NULL,
	[request_reqno] [varchar](50) NULL,
	[issueno] [varchar](50) NULL,
	[dtfiled] [datetime] NULL,
	[reqtype] [varchar](10) NULL,
	[user_objid] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
	[soldto_objid] [varchar](50) NULL,
	[soldto_name] [varchar](100) NULL,
	[soldto_title] [varchar](50) NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
	[itemclass] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [stocksale_issueno] UNIQUE NONCLUSTERED 
(
	[issueno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[stocksale]  WITH NOCHECK ADD  CONSTRAINT [FK_stocksale_request] FOREIGN KEY([request_objid])
REFERENCES [dbo].[stockrequest] ([objid])
GO

ALTER TABLE [dbo].[stocksale] NOCHECK CONSTRAINT [FK_stocksale_request]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[stocksaleitem](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
	[item_objid] [varchar](50) NULL,
	[item_code] [varchar](50) NULL,
	[item_title] [varchar](255) NULL,
	[unit] [varchar](20) NULL,
	[qtyrequested] [int] NULL,
	[qtyissued] [int] NULL,
	[cost] [decimal](10,2) NULL,
	[remarks] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[stocksaleitem]  WITH NOCHECK ADD  CONSTRAINT [FK_stocksaleitem_stocksale] FOREIGN KEY([parentid])
REFERENCES [dbo].[stocksale] ([objid])
GO

ALTER TABLE [dbo].[stocksaleitem] NOCHECK CONSTRAINT [FK_stocksaleitem_stocksale]
GO	
