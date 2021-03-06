USE [etracs25]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [material](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_material_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_material_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_material_state] ON [material] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machrysetting](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[ry] [int] NOT NULL,
	[previd] [varchar](50) NULL,
	[appliedto] [text] NULL,
	[residualrate] [numeric](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_machrysetting_machrysetting] ON [machrysetting] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscitem](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_miscitem_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_miscitem_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_miscitem_state] ON [miscitem] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ngas_revenue](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[dtposted] [datetime] NOT NULL,
	[postedby_objid] [varchar](50) NOT NULL,
	[postedby_name] [varchar](100) NOT NULL,
	[postedby_title] [varchar](50) NOT NULL,
	[amount] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [municipality](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[indexno] [varchar](15) NULL,
	[pin] [varchar](15) NULL,
	[name] [varchar](50) NULL,
	[previd] [varchar](50) NULL,
	[parentid] [varchar](50) NULL,
	[mayor_name] [varchar](100) NULL,
	[mayor_title] [varchar](50) NULL,
	[mayor_office] [varchar](50) NULL,
	[assessor_name] [varchar](100) NULL,
	[assessor_title] [varchar](50) NULL,
	[assessor_office] [varchar](50) NULL,
	[treasurer_name] [varchar](100) NULL,
	[treasurer_title] [varchar](50) NULL,
	[treasurer_office] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[fullname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_municipality_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_municipality_name_state] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_lgu_municipality_indexno] ON [municipality] 
(
	[indexno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_municipality_parentid] ON [municipality] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_municipality_previd] ON [municipality] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscrysetting](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[ry] [int] NOT NULL,
	[previd] [varchar](50) NULL,
	[appliedto] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_miscrysetting_ry] ON [miscrysetting] 
(
	[ry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_miscrysetting_state] ON [miscrysetting] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [liquidation](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[txnno] [varchar](50) NOT NULL,
	[dtposted] [datetime] NOT NULL,
	[liquidatingofficer_objid] [varchar](50) NOT NULL,
	[liquidatingofficer_name] [varchar](100) NOT NULL,
	[liquidatingofficer_title] [varchar](50) NOT NULL,
	[amount] [decimal](18, 2) NULL,
	[totalcash] [decimal](18, 2) NULL,
	[totalnoncash] [decimal](18, 2) NULL,
	[cashbreakdown] [varchar](600) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_liquidation_txnno] UNIQUE NONCLUSTERED 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_liquidation_state] ON [liquidation] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lobclassification](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[remarks] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lobattribute](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](100) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lob_lobattribute](
	[lobid] [varchar](50) NOT NULL,
	[lobattributeid] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lob](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[classification_objid] [varchar](50) NOT NULL,
	[psic] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machine](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_machine_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_machine_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_machine_state] ON [machine] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [directcash_collection](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[payee] [varchar](150) NOT NULL,
	[refdate] [date] NOT NULL,
	[refno] [varchar](25) NOT NULL,
	[amount] [numeric](16, 2) NOT NULL,
	[remarks] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_directcash_collection_refdate] ON [directcash_collection] 
(
	[refdate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipts](
	[objid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceiptitem_discount](
	[objid] [varchar](50) NOT NULL,
	[receiptid] [varchar](50) NULL,
	[receiptitemid] [varchar](50) NULL,
	[acctid] [varchar](50) NULL,
	[amount] [decimal](16, 2) NULL,
	[title] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landrysetting](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[ry] [int] NOT NULL,
	[appliedto] [varchar](500) NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_landrysetting_previd] ON [landrysetting] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_landrysetting_ry] ON [landrysetting] 
(
	[ry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [faasannotationtype](
	[objid] [varchar](50) NOT NULL,
	[type] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [annotationtype] UNIQUE NONCLUSTERED 
(
	[type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [fund](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[state] [varchar](10) NULL,
	[code] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[type] [varchar](20) NULL,
	[special] [int] NULL,
	[system] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [exemptiontype](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[orderno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_exemptiontype_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_exemptiontype_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_exemptiontype_state] ON [exemptiontype] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [entitymultiple](
	[objid] [varchar](50) NOT NULL,
	[fullname] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [entitymember](
	[objid] [varchar](50) NOT NULL,
	[entityid] [varchar](50) NOT NULL,
	[itemno] [int] NOT NULL,
	[prefix] [varchar](25) NULL,
	[member_objid] [varchar](50) NOT NULL,
	[member_name] [varchar](800) NOT NULL,
	[member_address] [varchar](160) NOT NULL,
	[suffix] [varchar](25) NULL,
	[remarks] [varchar](160) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_entitymember_entity] ON [entitymember] 
(
	[entityid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_taxpayer_name] ON [entitymember] 
(
	[member_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_taxpayer_objid] ON [entitymember] 
(
	[member_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [entityjuridical](
	[objid] [varchar](50) NOT NULL,
	[tin] [varchar](25) NULL,
	[dtregistered] [datetime] NULL,
	[orgtype] [varchar](25) NULL,
	[nature] [varchar](50) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [entityjuridical] ADD [placeregistered] [varchar](100) NULL
ALTER TABLE [entityjuridical] ADD PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_tin] ON [entityjuridical] 
(
	[tin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [entityindividual](
	[objid] [varchar](50) NOT NULL,
	[lastname] [varchar](800) NOT NULL,
	[firstname] [varchar](800) NOT NULL,
	[middlename] [varchar](800) NULL,
	[birthdate] [datetime] NULL,
	[birthplace] [varchar](160) NULL,
	[citizenship] [varchar](50) NULL,
	[gender] [varchar](10) NULL,
	[civilstatus] [varchar](15) NULL,
	[profession] [varchar](50) NULL,
	[tin] [varchar](25) NULL,
	[sss] [varchar](25) NULL,
	[height] [varchar](10) NULL,
	[weight] [varchar](10) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [entityindividual] ADD [acr] [varchar](50) NULL
SET ANSI_PADDING ON
ALTER TABLE [entityindividual] ADD [religion] [varchar](50) NULL
ALTER TABLE [entityindividual] ADD PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_entityindividual_firstname] ON [entityindividual] 
(
	[firstname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_entityindividual_lastname] ON [entityindividual] 
(
	[lastname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [entityid](
	[objid] [varchar](50) NOT NULL,
	[entityid] [varchar](50) NOT NULL,
	[idtype] [varchar](50) NOT NULL,
	[idno] [varchar](25) NOT NULL,
	[dtissued] [date] NULL,
	[dtexpiry] [date] NULL,
 CONSTRAINT [PK__entityid__530D6FE442E1EEFE] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_entityidcard_idtype_idno] UNIQUE NONCLUSTERED 
(
	[idtype] ASC,
	[idno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [entitycontact](
	[objid] [varchar](50) NOT NULL,
	[entityid] [varchar](50) NOT NULL,
	[contacttype] [varchar](25) NOT NULL,
	[contact] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [entity](
	[objid] [varchar](50) NOT NULL,
	[entityno] [varchar](50) NOT NULL,
	[name] [text] NOT NULL,
	[address] [varchar](255) NOT NULL,
	[mailingaddress] [varchar](255) NULL,
	[type] [varchar](25) NOT NULL,
	[sys_lastupdate] [varchar](25) NULL,
	[sys_lastupdateby] [varchar](50) NULL,
	[remarks] [varchar](300) NULL,
	[entityname] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [district](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[indexno] [varchar](15) NULL,
	[pin] [varchar](15) NULL,
	[name] [varchar](50) NULL,
	[previd] [varchar](50) NULL,
	[parentid] [varchar](50) NULL,
	[oldindexno] [varchar](15) NULL,
	[oldpin] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_district_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_district_name_state] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_lgu_district_indexno] ON [district] 
(
	[indexno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_district_parentid] ON [district] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_district_previd] ON [district] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgkind](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgkind_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgkind_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_bldgkind_state] ON [bldgkind] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgrysetting](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[ry] [int] NOT NULL,
	[predominant] [int] NOT NULL,
	[depreciatecoreanditemseparately] [int] NOT NULL,
	[computedepreciationbasedonschedule] [int] NOT NULL,
	[straightdepreciation] [varchar](50) NOT NULL,
	[calcbldgagebasedondtoccupied] [int] NOT NULL,
	[appliedto] [text] NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_bldgrysetting_previd] ON [bldgrysetting] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_bldgrysetting_state] ON [bldgrysetting] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [assessmentnotice](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[txnno] [varchar](10) NULL,
	[txndate] [datetime] NULL,
	[taxpayerid] [varchar](50) NOT NULL,
	[taxpayername] [varchar](800) NOT NULL,
	[taxpayeraddress] [varchar](150) NOT NULL,
	[createdbyid] [varchar](50) NULL,
	[createdbyname] [varchar](100) NOT NULL,
	[createdbytitle] [varchar](50) NOT NULL,
	[approvedbyid] [varchar](50) NULL,
	[approvedbyname] [varchar](100) NULL,
	[approvedbytitle] [varchar](50) NULL,
	[dtdelivered] [datetime] NULL,
	[receivedby] [varchar](150) NULL,
	[remarks] [varchar](500) NULL,
	[assessmentyear] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_assessmentnotice_receivedby] ON [assessmentnotice] 
(
	[receivedby] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_assessmentnotice_state] ON [assessmentnotice] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_assessmentnotice_taxpayerid] ON [assessmentnotice] 
(
	[taxpayerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_assessmentnotice_taxpayername] ON [assessmentnotice] 
(
	[taxpayername] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_assessmentnotice_txnno] ON [assessmentnotice] 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [batchgrerror](
	[faasid] [varchar](50) NOT NULL,
	[ry] [int] NOT NULL,
	[msg] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [batchcapture_collection_entry_item](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[item_objid] [varchar](50) NULL,
	[item_code] [varchar](50) NULL,
	[item_title] [varchar](50) NULL,
	[fund_objid] [varchar](50) NULL,
	[fund_code] [varchar](50) NULL,
	[fund_title] [varchar](50) NULL,
	[amount] [decimal](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_entry_item_item_code] ON [batchcapture_collection_entry_item] 
(
	[item_code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_entry_item_parentid] ON [batchcapture_collection_entry_item] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [batchcapture_collection_entry](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[receiptno] [varchar](50) NOT NULL,
	[receiptdate] [datetime] NOT NULL,
	[paidby] [varchar](100) NOT NULL,
	[paidbyaddress] [varchar](255) NOT NULL,
	[amount] [decimal](16, 2) NOT NULL,
	[totalcash] [decimal](16, 2) NOT NULL,
	[totalnoncash] [decimal](16, 2) NOT NULL,
	[series] [int] NOT NULL,
	[collectiontype_objid] [varchar](50) NULL,
	[collectiontype_name] [varchar](100) NULL,
	[remarks] [varchar](255) NULL,
	[particulars] [text] NULL,
	[voided] [int] NULL,
	[paymentitems] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_entry_parentid] ON [batchcapture_collection_entry] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_entry_receiptdate] ON [batchcapture_collection_entry] 
(
	[receiptdate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_entry_receiptno] ON [batchcapture_collection_entry] 
(
	[receiptno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [batchcapture_collection](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[defaultreceiptdate] [datetime] NOT NULL,
	[txnmode] [varchar](10) NOT NULL,
	[stub] [int] NOT NULL,
	[formno] [varchar](50) NOT NULL,
	[formtype] [varchar](10) NOT NULL,
	[controlid] [varchar](50) NOT NULL,
	[serieslength] [int] NOT NULL,
	[prefix] [varchar](10) NULL,
	[suffix] [varchar](10) NULL,
	[startseries] [int] NOT NULL,
	[endseries] [int] NOT NULL,
	[totalamount] [decimal](16, 2) NOT NULL,
	[totalcash] [decimal](16, 2) NOT NULL,
	[totalnoncash] [decimal](16, 2) NOT NULL,
	[collectiontype_objid] [varchar](50) NULL,
	[collectiontype_name] [varchar](100) NULL,
	[collector_objid] [varchar](50) NULL,
	[collector_name] [varchar](100) NULL,
	[collector_title] [varchar](50) NULL,
	[capturedby_objid] [varchar](50) NULL,
	[capturedby_name] [varchar](100) NULL,
	[capturedby_title] [varchar](50) NULL,
	[org_objid] [varchar](50) NOT NULL,
	[org_name] [varchar](50) NOT NULL,
	[postedby_objid] [varchar](50) NULL,
	[postedby_name] [varchar](100) NULL,
	[postedby_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_capturedbyname] ON [batchcapture_collection] 
(
	[capturedby_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_collectorname] ON [batchcapture_collection] 
(
	[collector_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_batchcapture_collection_txndate] ON [batchcapture_collection] 
(
	[txndate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [barangay](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[indexno] [varchar](15) NULL,
	[pin] [varchar](15) NULL,
	[name] [varchar](50) NULL,
	[previd] [varchar](50) NULL,
	[parentid] [varchar](50) NULL,
	[captain_name] [varchar](100) NULL,
	[captain_title] [varchar](50) NULL,
	[captain_office] [varchar](50) NULL,
	[treasurer_name] [varchar](100) NULL,
	[treasurer_title] [varchar](50) NULL,
	[treasurer_office] [varchar](50) NULL,
	[oldindexno] [varchar](15) NULL,
	[oldpin] [varchar](15) NULL,
	[fullname] [varchar](250) NULL,
	[address] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_barangay_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_barangay_name_state] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_lgu_barangay_indexno] ON [barangay] 
(
	[indexno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_barangay_parentid] ON [barangay] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_barangay_previd] ON [barangay] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bankdeposit_entry](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
	[bankaccount_objid] [varchar](50) NOT NULL,
	[bankaccount_code] [varchar](50) NOT NULL,
	[bankaccount_title] [varchar](255) NOT NULL,
	[totalcash] [decimal](16, 2) NOT NULL,
	[totalnoncash] [decimal](16, 2) NOT NULL,
	[amount] [decimal](16, 2) NOT NULL,
	[cashbreakdown] [varchar](600) NOT NULL,
	[summaries] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_bankacct_deposit] UNIQUE NONCLUSTERED 
(
	[parentid] ASC,
	[bankaccount_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bankdeposit](
	[objid] [varchar](50) NOT NULL,
	[txnno] [varchar](50) NULL,
	[dtposted] [datetime] NULL,
	[cashier_objid] [varchar](50) NULL,
	[cashier_name] [varchar](100) NULL,
	[cashier_title] [varchar](50) NULL,
	[totalcash] [decimal](16, 2) NULL,
	[totalnoncash] [decimal](16, 2) NULL,
	[amount] [decimal](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bankaccount](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[description] [varchar](255) NULL,
	[accttype] [varchar](50) NOT NULL,
	[bank_objid] [varchar](50) NOT NULL,
	[bank_code] [varchar](50) NOT NULL,
	[bank_name] [varchar](100) NOT NULL,
	[fund_objid] [varchar](50) NOT NULL,
	[fund_code] [varchar](50) NOT NULL,
	[fund_title] [varchar](50) NOT NULL,
	[currency] [varchar](10) NOT NULL,
	[cashreport] [varchar](50) NULL,
	[cashbreakdownreport] [varchar](50) NULL,
	[checkreport] [varchar](50) NULL,
	[forwardbalance] [decimal](16, 2) NULL,
	[beginbalance] [decimal](16, 2) NULL,
	[totaldr] [decimal](16, 2) NULL,
	[totalcr] [decimal](16, 2) NULL,
	[endbalance] [decimal](16, 2) NULL,
	[currentlineno] [int] NULL,
	[checkbreakdownreport] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bank](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[branchname] [varchar](50) NOT NULL,
	[address] [varchar](255) NULL,
	[manager] [varchar](50) NULL,
	[deposittype] [varchar](50) NULL,
	[depository] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bank_code_branch] UNIQUE NONCLUSTERED 
(
	[code] ASC,
	[branchname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bank_name_branch] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[branchname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_bank_state] ON [bank] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [account](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[state] [varchar](10) NULL,
	[chartid] [varchar](50) NULL,
	[code] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[type] [varchar](20) NULL,
	[acctgroup] [varchar](50) NULL,
	[target] [numeric](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_parentid] ON [account] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_title] ON [account] 
(
	[title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ar](
	[objid] [varchar](50) NOT NULL,
	[subacctid] [varchar](50) NULL,
	[subacctclass] [varchar](50) NULL,
	[subaccttitle] [varchar](50) NULL,
	[sltype] [varchar](10) NULL,
	[totaldr] [decimal](10, 2) NULL,
	[totalcr] [decimal](10, 2) NULL,
	[balance] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [afserial_inventory](
	[objid] [varchar](50) NOT NULL,
	[afid] [varchar](50) NULL,
	[respcenter_objid] [varchar](50) NULL,
	[respcenter_name] [varchar](50) NULL,
	[respcenter_type] [varchar](25) NULL,
	[startseries] [int] NULL,
	[endseries] [int] NULL,
	[currentseries] [int] NULL,
	[startstub] [int] NULL,
	[endstub] [int] NULL,
	[currentstub] [int] NULL,
	[prefix] [varchar](10) NULL,
	[suffix] [varchar](10) NULL,
	[unit] [varchar](10) NULL,
	[qtyin] [int] NULL,
	[qtyout] [int] NULL,
	[qtycancelled] [int] NULL,
	[qtybalance] [int] NULL,
	[currentlineno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ap](
	[objid] [varchar](50) NOT NULL,
	[subacctid] [varchar](50) NULL,
	[subacctclass] [varchar](50) NULL,
	[subaccttitle] [varchar](50) NULL,
	[sltype] [varchar](10) NULL,
	[totaldr] [decimal](10, 2) NULL,
	[totalcr] [decimal](10, 2) NULL,
	[balance] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [afstockcontrol](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[af] [varchar](10) NULL,
	[refid] [varchar](50) NULL,
	[reftype] [varchar](25) NULL,
	[refdate] [datetime] NULL,
	[startstub] [int] NULL,
	[endstub] [int] NULL,
	[currentstub] [int] NULL,
	[startseries] [int] NULL,
	[endseries] [int] NULL,
	[currentseries] [int] NULL,
	[prefix] [varchar](50) NULL,
	[suffix] [varchar](50) NULL,
	[qtyreceived] [int] NULL,
	[qtyissued] [int] NULL,
	[qtybalance] [int] NULL,
	[qtycancelled] [int] NULL,
	[currentindexno] [int] NULL,
	[unit] [varchar](10) NULL,
 CONSTRAINT [pk_afstockcontrol] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [afserialcapture](
	[controlid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[controlid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [afserial_inventory_detail_cancelseries](
	[objid] [varchar](50) NOT NULL,
	[series] [int] NOT NULL,
	[controlid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC,
	[series] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_burial](
	[objid] [varchar](50) NOT NULL,
	[tocitymuni] [varchar](100) NULL,
	[toprovince] [varchar](100) NULL,
	[permissiontype] [varchar](15) NULL,
	[name] [varchar](100) NULL,
	[nationality] [varchar](15) NULL,
	[age] [int] NULL,
	[sex] [varchar](10) NULL,
	[dtdeath] [varchar](15) NULL,
	[deathcause] [varchar](50) NULL,
	[cemetery] [varchar](50) NULL,
	[infectious] [varchar](50) NULL,
	[embalmed] [varchar](50) NULL,
	[disposition] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [businessvariable](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[datatype] [varchar](20) NOT NULL,
	[caption] [varchar](50) NOT NULL,
	[description] [varchar](100) NULL,
	[arrayvalues] [text] NULL,
	[system] [int] NULL,
	[sortorder] [int] NULL,
	[category] [varchar](100) NULL,
	[handler] [varchar](50) NULL,
 CONSTRAINT [PK_businessvariable] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [businessrequirement](
	[objid] [varchar](50) NOT NULL,
	[code] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[department] [varchar](50) NULL,
	[account_objid] [varchar](50) NULL,
	[account_code] [varchar](50) NULL,
	[account_title] [varchar](50) NULL,
 CONSTRAINT [PK_businessrequirement_1] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [businesspermit](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NULL,
	[permitno] [varchar](20) NULL,
	[activeyear] [int] NULL,
	[version] [int] NULL,
	[permittype] [varchar](20) NULL,
	[apptype] [varchar](50) NULL,
	[bin] [varchar](50) NULL,
	[pin] [varchar](50) NULL,
	[ownername] [varchar](255) NULL,
	[tradename] [varchar](255) NULL,
	[businessaddress] [varchar](255) NULL,
	[businessid] [varchar](50) NULL,
	[applicationid] [varchar](50) NULL,
	[dtissued] [date] NULL,
	[issuedby_objid] [varchar](50) NULL,
	[issuedby_name] [varchar](255) NULL,
	[expirydate] [date] NULL,
	[remarks] [varchar](255) NULL,
	[lobs] [text] NULL,
	[payments] [text] NULL,
	[appinfos] [text] NULL,
	[assessmentinfos] [text] NULL,
	[owneraddress] [varchar](255) NULL,
	[businessname] [varchar](255) NULL,
	[orgtype] [varchar](50) NULL,
 CONSTRAINT [PK_business_permit] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bpexpirydate](
	[year] [int] NOT NULL,
	[qtr] [int] NOT NULL,
	[expirydate] [date] NULL,
	[reason] [varchar](500) NULL,
 CONSTRAINT [PK_bpexpirydate] PRIMARY KEY CLUSTERED 
(
	[year] ASC,
	[qtr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_assessment_info](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NOT NULL,
	[attribute_objid] [varchar](50) NULL,
	[attribute_name] [varchar](50) NULL,
	[lob_objid] [varchar](50) NULL,
	[lob_name] [varchar](100) NULL,
	[decimalvalue] [decimal](16, 2) NULL,
	[intvalue] [int] NULL,
	[stringvalue] [varchar](255) NULL,
	[boolvalue] [int] NULL,
	[phase] [int] NULL,
	[level] [int] NULL,
 CONSTRAINT [PK_business_assessment_info] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business](
	[objid] [varchar](50) NOT NULL,
	[apptype] [varchar](50) NULL,
	[state] [varchar](15) NOT NULL,
	[owner_name] [varchar](255) NOT NULL,
	[owner_objid] [varchar](50) NOT NULL,
	[owner_address] [varchar](255) NULL,
	[barangay_objid] [varchar](50) NULL,
	[barangay_name] [varchar](50) NULL,
	[businessname] [varchar](255) NULL,
	[tradename] [varchar](255) NOT NULL,
	[businessaddress] [varchar](255) NULL,
	[orgtype] [varchar](50) NULL,
	[yearstarted] [int] NULL,
	[activeyear] [int] NULL,
	[pin] [varchar](50) NULL,
	[taxcredit] [decimal](18, 2) NULL,
	[currentapplicationid] [varchar](50) NULL,
	[currentpermitid] [varchar](50) NULL,
	[bin] [varchar](50) NULL,
	[qtrpaid] [int] NULL,
	[appcount] [int] NULL,
 CONSTRAINT [PK_business] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UIX_business_bin] ON [business] 
(
	[bin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [brgyshare_account_mapping](
	[barangayid] [varchar](50) NOT NULL,
	[acct_objid] [varchar](50) NOT NULL,
	[penaltyacct_objid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[barangayid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [brgyshare](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[txnno] [varchar](15) NULL,
	[txndate] [datetime] NULL,
	[year] [int] NULL,
	[month] [int] NULL,
	[totalshare] [numeric](16, 2) NOT NULL,
	[createdbyid] [varchar](50) NULL,
	[createdby] [varchar](150) NOT NULL,
	[createdbytitle] [varchar](50) NOT NULL,
	[postedbyid] [varchar](50) NULL,
	[postedby] [varchar](150) NULL,
	[postedbytitle] [varchar](50) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [brgyshare] ADD [sharetype] [varchar](50) NULL
ALTER TABLE [brgyshare] ADD PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
ALTER TABLE [brgyshare] ADD  CONSTRAINT [ux_brgyshare_yqm] UNIQUE NONCLUSTERED 
(
	[year] ASC,
	[month] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_brgyshare_state] ON [brgyshare] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_brgyshare_yq] ON [brgyshare] 
(
	[year] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_brgyshare_yqm] ON [brgyshare] 
(
	[year] ASC,
	[month] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_brgyshare_yr] ON [brgyshare] 
(
	[year] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bpreceivable](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[applicationid] [varchar](50) NULL,
	[iyear] [int] NULL,
	[iqtr] [int] NULL,
	[account_objid] [varchar](50) NULL,
	[account_title] [varchar](100) NULL,
	[lob_objid] [varchar](50) NULL,
	[lob_name] [varchar](100) NULL,
	[lob_assessmenttype] [varchar](50) NULL,
	[amount] [decimal](16, 2) NOT NULL,
	[amtpaid] [decimal](16, 2) NOT NULL,
	[discount] [decimal](16, 2) NOT NULL,
	[refid] [varchar](50) NULL,
	[reftype] [varchar](50) NULL,
	[remarks] [varchar](255) NULL,
	[department] [varchar](50) NULL,
	[taxfeetype] [varchar](50) NULL,
 CONSTRAINT [PK_bpreceivable] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bppayment_item](
	[objid] [varchar](50) NOT NULL,
	[receivableid] [varchar](50) NULL,
	[businessid] [varchar](50) NULL,
	[paymentid] [varchar](50) NULL,
	[iqtr] [int] NULL,
	[amtpaid] [decimal](16, 2) NULL,
	[surchargepaid] [decimal](16, 2) NULL,
	[interestpaid] [decimal](16, 2) NULL,
	[discount] [decimal](16, 2) NULL,
	[iyear] [int] NULL,
	[voided] [int] NULL,
	[account_objid] [varchar](50) NULL,
	[account_code] [varchar](50) NULL,
	[account_title] [varchar](100) NULL,
	[lob_objid] [varchar](50) NULL,
	[lob_name] [varchar](255) NULL,
	[cashreceiptitemid] [varchar](50) NULL,
 CONSTRAINT [PK_bpreceivable_item] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_lob](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[lobid] [varchar](50) NULL,
	[name] [varchar](100) NULL,
	[assessmenttype] [varchar](50) NULL,
 CONSTRAINT [PK_business_lob] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_info](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NOT NULL,
	[attribute_objid] [varchar](50) NULL,
	[attribute_name] [varchar](50) NULL,
	[decimalvalue] [decimal](16, 2) NULL,
	[intvalue] [int] NULL,
	[stringvalue] [varchar](255) NULL,
	[boolvalue] [int] NULL,
	[phase] [int] NULL,
	[level] [int] NULL,
 CONSTRAINT [PK_business_info] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_cityengineer_fee](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NOT NULL,
	[state] [varchar](50) NULL,
	[account_objid] [varchar](50) NOT NULL,
	[account_title] [varchar](255) NULL,
	[amount] [decimal](18, 2) NULL,
	[recurring] [int] NULL,
	[user_objid] [varchar](50) NULL,
	[user_name] [varchar](255) NULL,
 CONSTRAINT [PK_business_cityengineer_fee] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_cityengineer](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[state] [varchar](25) NULL,
 CONSTRAINT [PK_business_cityengineer] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UIX_business_cityengineer_businessid] ON [business_cityengineer] 
(
	[businessid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_slaughter](
	[objid] [varchar](50) NOT NULL,
	[acctid] [varchar](50) NULL,
	[acctno] [varchar](50) NULL,
	[acctitle] [varchar](100) NULL,
	[permitamount] [decimal](18, 2) NULL,
	[slaughterof] [varchar](25) NULL,
	[weight] [decimal](18, 2) NULL,
	[ordinanceno] [varchar](50) NULL,
	[ordinancedate] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_rpt](
	[objid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[qtr] [int] NOT NULL,
	[month] [int] NOT NULL,
	[day] [int] NOT NULL,
	[txntype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_marriage](
	[objid] [varchar](50) NOT NULL,
	[groomname] [varchar](100) NULL,
	[groomaddress] [varchar](100) NULL,
	[groomageyear] [int] NULL,
	[groomagemonth] [int] NULL,
	[bridename] [varchar](100) NULL,
	[brideaddress] [varchar](100) NULL,
	[brideageyear] [int] NULL,
	[brideagemonth] [int] NULL,
	[registerno] [varchar](30) NULL,
	[attachments] [varchar](200) NULL,
	[lcrofficer] [varchar](100) NULL,
	[lcrofficertitle] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_largecattleownership](
	[objid] [varchar](50) NOT NULL,
	[ownerof] [varchar](200) NULL,
	[sex] [varchar](10) NULL,
	[age] [int] NULL,
	[municipalitybrand] [varchar](20) NULL,
	[ownerbrand] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [canceltdreason](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_canceltdreason_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_canceltdreason_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_canceltdreason_state] ON [canceltdreason] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [collectiontype](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[formno] [varchar](10) NULL,
	[handler] [varchar](25) NULL,
	[allowbatch] [int] NULL,
	[barcodekey] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [collectiongroup_revenueitem](
	[collectiongroupid] [varchar](50) NOT NULL,
	[revenueitemid] [varchar](50) NOT NULL,
	[orderno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[collectiongroupid] ASC,
	[revenueitemid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [collectiongroup](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](30) NULL,
	[name] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_colletiongroup_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [collectionform](
	[objid] [varchar](50) NOT NULL,
	[title] [varchar](255) NULL,
	[formtype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [city](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[indexno] [varchar](15) NULL,
	[pin] [varchar](15) NULL,
	[name] [varchar](50) NULL,
	[previd] [varchar](50) NULL,
	[parentid] [varchar](50) NULL,
	[mayor_name] [varchar](100) NULL,
	[mayor_title] [varchar](50) NULL,
	[mayor_office] [varchar](50) NULL,
	[assessor_name] [varchar](100) NULL,
	[assessor_title] [varchar](50) NULL,
	[assessor_office] [varchar](50) NULL,
	[treasurer_name] [varchar](100) NULL,
	[treasurer_title] [varchar](50) NULL,
	[treasurer_office] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[fullname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_city_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_city_name_state] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_lgu_city_indexno] ON [city] 
(
	[indexno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_city_parentid] ON [city] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_city_previd] ON [city] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [certification](
	[objid] [varchar](50) NOT NULL,
	[txnno] [varchar](25) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[type] [varchar](50) NOT NULL,
	[refid] [varchar](50) NULL,
	[name] [varchar](200) NOT NULL,
	[address] [varchar](300) NOT NULL,
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
	[info] [varchar](3000) NULL,
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashticket_inventory_detail](
	[objid] [varchar](50) NOT NULL,
	[controlid] [varchar](50) NULL,
	[lineno] [int] NULL,
	[refid] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[reftype] [varchar](50) NULL,
	[refdate] [datetime] NULL,
	[txndate] [datetime] NULL,
	[txntype] [varchar](25) NULL,
	[qtyreceived] [int] NULL,
	[qtybegin] [int] NULL,
	[qtyissued] [int] NULL,
	[qtyending] [int] NULL,
	[qtycancelled] [int] NULL,
	[remarks] [varchar](255) NULL,
	[remittanceid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashticket_inventory](
	[objid] [varchar](50) NOT NULL,
	[afid] [varchar](50) NULL,
	[respcenter_objid] [varchar](50) NULL,
	[respcenter_name] [varchar](50) NULL,
	[respcenter_type] [varchar](25) NULL,
	[startstub] [int] NULL,
	[endstub] [int] NULL,
	[currentstub] [int] NULL,
	[qtyin] [int] NULL,
	[qtyout] [int] NULL,
	[qtycancelled] [int] NULL,
	[qtybalance] [int] NULL,
	[currentlineno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptledgerbill](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[ledgerfaasid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[av] [numeric](16, 2) NOT NULL,
	[type] [varchar](25) NOT NULL,
	[revenueitemid] [varchar](50) NULL,
	[amount] [numeric](16, 2) NOT NULL,
	[amtpaid] [numeric](16, 2) NOT NULL,
	[interest] [numeric](16, 2) NOT NULL,
	[discount] [numeric](16, 2) NOT NULL,
	[revtype] [varchar](25) NOT NULL,
	[refid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptexpiry](
	[iyear] [int] NOT NULL,
	[iqtr] [int] NOT NULL,
	[expirytype] [varchar](50) NOT NULL,
	[expirydate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iqtr] ASC,
	[iyear] ASC,
	[expirytype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptexpiry_yrqtr] ON [rptexpiry] 
(
	[iyear] ASC,
	[iqtr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpt_requirement_type](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](150) NULL,
	[handler] [varchar](100) NULL,
	[sortorder] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_rptrequirementtype_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptrequirementtype_name] ON [rpt_requirement_type] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptbill](
	[objid] [varchar](50) NOT NULL,
	[taxpayer_objid] [varchar](50) NOT NULL,
	[taxpayer_name] [text] NOT NULL,
	[taxpayer_address] [varchar](150) NOT NULL,
	[barcode] [varchar](25) NOT NULL,
	[expirydate] [date] NOT NULL,
	[postedby] [varchar](100) NOT NULL,
	[postedbytitle] [varchar](50) NULL,
	[billtoyear] [int] NULL,
	[billtoqtr] [int] NULL,
	[dtposted] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_rptbill_barcode] UNIQUE NONCLUSTERED 
(
	[barcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [rpt_sms_registration](
	[phoneno] [varchar](25) NOT NULL,
	[refid] [varchar](50) NOT NULL,
	[dtregistered] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[phoneno] ASC,
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptsmsreg_refid] ON [rpt_sms_registration] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [rpt_sms](
	[objid] [varchar](50) NOT NULL,
	[traceid] [varchar](50) NOT NULL,
	[phoneno] [varchar](50) NOT NULL,
	[logdate] [datetime] NOT NULL,
	[message] [varchar](500) NULL,
	[amount] [numeric](10, 2) NOT NULL,
	[amtpaid] [numeric](10, 2) NOT NULL,
	[action] [varchar](100) NULL,
	[status] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptsms_phoneno] ON [rpt_sms] 
(
	[phoneno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptsms_traceid] ON [rpt_sms] 
(
	[traceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [revenueitem_collectiongroup](
	[objid] [varchar](50) NOT NULL,
	[acctid] [varchar](50) NOT NULL,
 CONSTRAINT [pk_revenueitem_collectiongroup] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [revenueitem_attribute_type](
	[objid] [varchar](50) NOT NULL,
	[title] [varchar](50) NULL,
	[handler] [varchar](50) NULL,
 CONSTRAINT [PK_revenueitem_attribute_type] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [revenueitem](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[code] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[type] [varchar](25) NULL,
	[fund_objid] [varchar](50) NULL,
	[fund_code] [varchar](50) NULL,
	[fund_title] [varchar](50) NULL,
	[defaultvalue] [decimal](16, 2) NULL,
	[valuetype] [varchar](10) NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [resection](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[pintype] [varchar](5) NOT NULL,
	[barangayid] [varchar](50) NOT NULL,
	[barangaypin] [varchar](15) NOT NULL,
	[section] [varchar](3) NOT NULL,
	[ry] [int] NOT NULL,
	[txntype_objid] [varchar](5) NOT NULL,
	[txnno] [varchar](10) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[autonumber] [int] NOT NULL,
	[effectivityyear] [int] NOT NULL,
	[effectivityqtr] [int] NOT NULL,
	[memoranda] [varchar](500) NOT NULL,
	[signatories] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_resection_sectionno] UNIQUE NONCLUSTERED 
(
	[barangayid] ASC,
	[section] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [remoteserverdata](
	[objid] [varchar](50) NOT NULL,
	[data] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [remittance](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[txnno] [varchar](20) NOT NULL,
	[dtposted] [datetime] NOT NULL,
	[collector_objid] [varchar](50) NOT NULL,
	[collector_name] [varchar](100) NOT NULL,
	[collector_title] [varchar](50) NOT NULL,
	[liquidatingofficer_objid] [varchar](50) NOT NULL,
	[liquidatingofficer_name] [varchar](100) NOT NULL,
	[liquidatingofficer_title] [varchar](50) NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[totalcash] [decimal](18, 2) NOT NULL,
	[totalnoncash] [decimal](18, 2) NOT NULL,
	[cashbreakdown] [varchar](600) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_remittance_txnno] UNIQUE NONCLUSTERED 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_remittance_state] ON [remittance] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [province](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[indexno] [varchar](15) NULL,
	[pin] [varchar](15) NULL,
	[name] [varchar](50) NULL,
	[previd] [varchar](50) NULL,
	[parentid] [varchar](50) NULL,
	[governor_name] [varchar](100) NULL,
	[governor_title] [varchar](50) NULL,
	[governor_office] [varchar](50) NULL,
	[assessor_name] [varchar](100) NULL,
	[assessor_title] [varchar](50) NULL,
	[assessor_office] [varchar](50) NULL,
	[treasurer_name] [varchar](100) NULL,
	[treasurer_title] [varchar](50) NULL,
	[treasurer_office] [varchar](50) NULL,
	[address] [varchar](100) NULL,
	[fullname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_province_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lgu_province_name_state] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_lgu_province_indexno] ON [province] 
(
	[indexno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_province_parentid] ON [province] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lgu_province_previd] ON [province] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [propertyclassification](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[special] [int] NOT NULL,
	[orderno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_propertyclassification_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_propertyclassification_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_propertyclassification_state] ON [propertyclassification] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [profession](
	[objid] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [planttreerysetting](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[ry] [int] NOT NULL,
	[applyagriadjustment] [int] NOT NULL,
	[appliedto] [text] NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_planttreerysetting_ry] ON [planttreerysetting] 
(
	[ry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [planttree](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_planttree_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_planttree_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_planttree_state] ON [planttree] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [sms_rpt_registration](
	[mobileno] [varchar](25) NOT NULL,
	[rptledgerid] [varchar](50) NOT NULL,
	[dtregistered] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mobileno] ASC,
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_smsrptreg_rptledgerid] ON [sms_rpt_registration] 
(
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [signatory](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[doctype] [varchar](50) NOT NULL,
	[indexno] [int] NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[firstname] [varchar](50) NOT NULL,
	[middlename] [varchar](50) NULL,
	[name] [varchar](150) NULL,
	[title] [varchar](50) NOT NULL,
	[department] [varchar](50) NULL,
	[personnelid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_signatory_doctype] ON [signatory] 
(
	[doctype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rysettinginfo](
	[ry] [int] NOT NULL,
	[ordinanceno] [varchar](50) NULL,
	[ordinancedate] [datetime] NULL,
	[sangguniangname] [varchar](50) NULL,
 CONSTRAINT [PK_rysettinginfo] PRIMARY KEY CLUSTERED 
(
	[ry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rysetting_lgu](
	[rysettingid] [varchar](50) NOT NULL,
	[lguid] [varchar](50) NOT NULL,
	[lguname] [varchar](100) NOT NULL,
	[settingtype] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rysettingid] ASC,
	[lguid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpumaster](
	[objid] [varchar](50) NOT NULL,
	[currentfaasid] [varchar](50) NULL,
	[currentrpuid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpttask](
	[taskid] [varchar](50) NOT NULL,
	[objid] [varchar](50) NOT NULL,
	[action] [varchar](50) NOT NULL,
	[refno] [varchar](50) NOT NULL,
	[filetype] [varchar](50) NOT NULL,
	[msg] [varchar](100) NULL,
	[startdate] [datetime] NOT NULL,
	[enddate] [datetime] NULL,
	[createdby_objid] [varchar](50) NOT NULL,
	[createdby_name] [varchar](150) NOT NULL,
	[createdby_title] [varchar](50) NULL,
	[assignedto_objid] [varchar](50) NULL,
	[assignedto_name] [varchar](150) NULL,
	[assignedto_title] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[taskid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rpttask_assignedto_enddate] ON [rpttask] 
(
	[assignedto_objid] ASC,
	[enddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttask_assignedto_name] ON [rpttask] 
(
	[assignedto_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttask_assignedto_objid] ON [rpttask] 
(
	[assignedto_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttask_createdby_name] ON [rpttask] 
(
	[createdby_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttask_createdby_objid] ON [rpttask] 
(
	[createdby_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttask_enddate] ON [rpttask] 
(
	[enddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttask_objid] ON [rpttask] 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptreceipt_capture](
	[objid] [varchar](100) NOT NULL,
	[rptledgerid] [varchar](50) NOT NULL,
	[receiptno] [varchar](25) NOT NULL,
	[receiptdate] [date] NOT NULL,
	[payorid] [varchar](50) NULL,
	[paidby_name] [text] NOT NULL,
	[paidby_address] [varchar](150) NOT NULL,
	[collector] [varchar](100) NOT NULL,
	[amount] [decimal](12, 2) NOT NULL,
	[postedby] [varchar](100) NOT NULL,
	[postedbytitle] [varchar](50) NOT NULL,
	[dtposted] [datetime] NOT NULL,
	[paidby] [varchar](50) NOT NULL,
	[fromyear] [int] NOT NULL,
	[fromqtr] [int] NOT NULL,
	[toyear] [int] NOT NULL,
	[toqtr] [int] NOT NULL,
	[period] [varchar](50) NOT NULL,
	[basic] [decimal](12, 2) NOT NULL,
	[basicint] [decimal](12, 2) NOT NULL,
	[basicdisc] [decimal](12, 2) NOT NULL,
	[sef] [decimal](12, 2) NOT NULL,
	[sefint] [decimal](12, 2) NOT NULL,
	[sefdisc] [decimal](12, 2) NOT NULL,
	[firecode] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK__rptrecei__530D6FE40915401C] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptreceipt_capture_paidby] ON [rptreceipt_capture] 
(
	[paidby] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptreceipt_payorid] ON [rptreceipt_capture] 
(
	[payorid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptreceipt_receiptno] ON [rptreceipt_capture] 
(
	[receiptno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptparameter](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[caption] [varchar](100) NOT NULL,
	[description] [varchar](1000) NULL,
	[paramtype] [varchar](20) NOT NULL,
	[minvalue] [numeric](10, 2) NOT NULL,
	[maxvalue] [numeric](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_rptparameter_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptparameter_caption] ON [rptparameter] 
(
	[caption] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptparameter_state] ON [rptparameter] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpttaxincentive](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[txnno] [varchar](25) NULL,
	[txndate] [date] NULL,
	[taxpayer_objid] [varchar](50) NOT NULL,
	[taxpayer_name] [text] NOT NULL,
	[taxpayer_address] [varchar](150) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[remarks] [varchar](250) NOT NULL,
	[createdby_objid] [varchar](50) NOT NULL,
	[createdby_name] [varchar](100) NOT NULL,
	[createdby_title] [varchar](50) NOT NULL,
	[createdby_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rpttaxincentive_name] ON [rpttaxincentive] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttaxincentive_state] ON [rpttaxincentive] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttaxincentive_taxpayerid] ON [rpttaxincentive] 
(
	[taxpayer_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttaxincentive_txnno] ON [rpttaxincentive] 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpttracking](
	[objid] [varchar](50) NOT NULL,
	[filetype] [varchar](50) NOT NULL,
	[trackingno] [varchar](25) NOT NULL,
	[msg] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_rpttracking_trackingno] UNIQUE NONCLUSTERED 
(
	[trackingno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sreaccount_incometarget](
	[objid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[target] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC,
	[year] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sreaccount](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[state] [varchar](10) NULL,
	[chartid] [varchar](50) NULL,
	[code] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[type] [varchar](20) NULL,
	[acctgroup] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [structure](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[indexno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_structure_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_structure_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_structure_state] ON [structure] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockrequestitem](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[item_objid] [varchar](50) NULL,
	[item_code] [varchar](50) NULL,
	[item_title] [varchar](255) NULL,
	[unit] [varchar](10) NULL,
	[qty] [int] NULL,
	[qtyreceived] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [req_af_uidx] UNIQUE NONCLUSTERED 
(
	[parentid] ASC,
	[item_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_afrequestitem_af] ON [stockrequestitem] 
(
	[item_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockrequest](
	[objid] [varchar](50) NOT NULL,
	[reqno] [varchar](20) NULL,
	[state] [varchar](10) NULL,
	[dtfiled] [datetime] NULL,
	[reqtype] [varchar](10) NULL,
	[itemclass] [varchar](50) NULL,
	[requester_objid] [varchar](50) NULL,
	[requester_name] [varchar](50) NULL,
	[requester_title] [varchar](50) NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
	[vendor] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockitem](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NULL,
	[code] [varchar](20) NULL,
	[type] [varchar](50) NULL,
	[itemclass] [varchar](50) NULL,
	[title] [varchar](150) NULL,
	[description] [varchar](255) NULL,
	[baseunit] [varchar](10) NULL,
	[defaultunit] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [stockitem_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_dataset](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[input] [text] NULL,
	[output] [text] NULL,
	[statement] [varchar](50) NULL,
	[datasource] [varchar](50) NULL,
	[servicename] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [subcollector_remittance](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[txnno] [varchar](20) NOT NULL,
	[dtposted] [datetime] NOT NULL,
	[collector_objid] [varchar](50) NOT NULL,
	[collector_name] [varchar](100) NOT NULL,
	[collector_title] [varchar](30) NOT NULL,
	[subcollector_objid] [varchar](50) NOT NULL,
	[subcollector_name] [varchar](100) NOT NULL,
	[subcollector_title] [varchar](50) NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[totalcash] [numeric](12, 2) NULL,
	[totalnoncash] [numeric](12, 2) NULL,
	[cashbreakdown] [varchar](800) NULL,
	[collectionsummaries] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sys_quarter](
	[qtrid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[qtrid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_orgclass](
	[name] [varchar](50) NOT NULL,
	[title] [varchar](255) NULL,
	[parentclass] [varchar](255) NULL,
	[handler] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_report_folder](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](255) NULL,
	[title] [varchar](255) NULL,
	[parentid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_foldername] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [workflowstate](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[txndate] [datetime] NULL,
	[userid] [varchar](50) NULL,
	[username] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_txndate] ON [workflowstate] 
(
	[txndate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_userid] ON [workflowstate] 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_username] ON [workflowstate] 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [txnsignatory](
	[objid] [varchar](50) NOT NULL,
	[refid] [varchar](50) NOT NULL,
	[personnelid] [varchar](50) NULL,
	[type] [varchar](25) NOT NULL,
	[caption] [varchar](25) NULL,
	[name] [varchar](200) NULL,
	[title] [varchar](50) NULL,
	[dtsigned] [datetime] NULL,
	[seqno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_signatory_personnel] ON [txnsignatory] 
(
	[personnelid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_signatory_refid] ON [txnsignatory] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [txnref](
	[oid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[objid] [varchar](50) NOT NULL,
	[refid] [varchar](50) NOT NULL,
	[msg] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_txnref_objid] UNIQUE NONCLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_txnref_refid] ON [txnref] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [txnlog](
	[objid] [varchar](50) NOT NULL,
	[ref] [varchar](100) NOT NULL,
	[refid] [varchar](500) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[action] [varchar](50) NOT NULL,
	[userid] [varchar](50) NOT NULL,
	[remarks] [varchar](500) NULL,
	[diff] [text] NULL,
	[username] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_txndate] ON [txnlog] 
(
	[txndate] ASC
)
INCLUDE ( [ref],
[action],
[userid],
[username]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_txnlog_action] ON [txnlog] 
(
	[action] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_txnlog_ref] ON [txnlog] 
(
	[ref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_txnlog_refid] ON [txnlog] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_txnlog_userid] ON [txnlog] 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_txnlog_useridaction] ON [txnlog] 
(
	[userid] ASC,
	[action] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tracs_remittance](
	[objid] [varchar](50) NOT NULL,
	[txnno] [varchar](20) NOT NULL,
	[dtposted] [datetime] NOT NULL,
	[collector_objid] [varchar](50) NOT NULL,
	[collector_name] [varchar](100) NOT NULL,
	[collector_title] [varchar](30) NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[postedby] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tracs_cashreceiptitem](
	[objid] [varchar](50) NOT NULL,
	[receiptid] [varchar](50) NULL,
	[item_objid] [varchar](50) NULL,
	[item_code] [varchar](255) NULL,
	[item_title] [varchar](255) NULL,
	[amount] [decimal](16, 2) NULL,
	[barangayid] [varchar](50) NULL,
	[lgushare] [numeric](16, 2) NULL,
	[brgyshare] [numeric](16, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tracs_cashreceipt](
	[objid] [varchar](50) NOT NULL,
	[formno] [varchar](50) NOT NULL,
	[formtype] [varchar](25) NOT NULL,
	[receiptno] [varchar](50) NOT NULL,
	[receiptdate] [datetime] NOT NULL,
	[paidby] [varchar](255) NOT NULL,
	[paidbyaddress] [varchar](100) NULL,
	[amount] [decimal](16, 2) NOT NULL,
	[collector_objid] [varchar](50) NOT NULL,
	[collector_name] [varchar](100) NOT NULL,
	[collector_title] [varchar](30) NOT NULL,
	[collectiontype_objid] [varchar](50) NOT NULL,
	[collectiontype_name] [varchar](100) NOT NULL,
	[remittanceid] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [tbletracsaccountmapping](
	[taxfeeid] [varchar](50) NOT NULL,
	[item_objid] [varchar](50) NOT NULL,
	[item_code] [varchar](50) NULL,
	[item_title] [varchar](255) NULL,
	[fund_objid] [varchar](50) NULL,
	[fund_code] [varchar](50) NULL,
	[fund_title] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[taxfeeid] ASC,
	[item_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_var](
	[name] [varchar](50) NOT NULL,
	[value] [text] NULL,
	[description] [varchar](255) NULL,
	[datatype] [varchar](15) NULL,
	[category] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_usergroup](
	[objid] [varchar](50) NOT NULL,
	[title] [varchar](255) NULL,
	[domain] [varchar](25) NULL,
	[userclass] [varchar](25) NULL,
	[orgclass] [varchar](50) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [sys_usergroup] ADD [role] [varchar](50) NULL
ALTER TABLE [sys_usergroup] ADD PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_user](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NULL,
	[dtcreated] [datetime] NULL,
	[createdby] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[middlename] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[jobtitle] [varchar](50) NULL,
	[pwdlogincount] [int] NULL,
	[pwdexpirydate] [datetime] NULL,
	[usedpwds] [text] NULL,
	[lockid] [varchar](32) NULL,
	[txncode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_lastname_firstname] ON [sys_user] 
(
	[lastname] ASC,
	[firstname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_name] ON [sys_user] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_terminal](
	[terminalid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[parentcode] [varchar](50) NULL,
	[parenttype] [varchar](50) NULL,
	[macaddress] [varchar](50) NULL,
	[dtregistered] [datetime] NULL,
	[registeredby] [varchar](50) NULL,
	[info] [text] NULL,
	[state] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[terminalid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_terminal] ON [sys_terminal] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_session_log](
	[sessionid] [varchar](50) NOT NULL,
	[userid] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[clienttype] [varchar](12) NULL,
	[accesstime] [datetime] NULL,
	[accessexpiry] [datetime] NULL,
	[timein] [datetime] NULL,
	[timeout] [datetime] NULL,
	[state] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[sessionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_timein] ON [sys_session_log] 
(
	[timein] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_timeout] ON [sys_session_log] 
(
	[timeout] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_userid] ON [sys_session_log] 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_username] ON [sys_session_log] 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_session](
	[sessionid] [varchar](50) NOT NULL,
	[userid] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[clienttype] [varchar](12) NULL,
	[accesstime] [datetime] NULL,
	[accessexpiry] [datetime] NULL,
	[timein] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[sessionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_timein] ON [sys_session] 
(
	[timein] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_userid] ON [sys_session] 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_username] ON [sys_session] 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_sequence](
	[objid] [varchar](100) NOT NULL,
	[nextSeries] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_fact](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[factclass] [varchar](50) NULL,
	[sortorder] [int] NULL,
	[handler] [varchar](50) NULL,
	[defaultvarname] [varchar](25) NULL,
	[dynamic] [int] NULL,
	[lookuphandler] [varchar](50) NULL,
	[lookupkey] [varchar](50) NULL,
	[lookupvalue] [varchar](50) NULL,
	[lookupdatatype] [varchar](50) NULL,
	[dynamicfieldname] [varchar](50) NULL,
	[builtinconstraints] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_actiondef](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[title] [varchar](250) NULL,
	[sortorder] [int] NULL,
	[actionname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_script](
	[name] [varchar](50) NOT NULL,
	[title] [varbinary](255) NULL,
	[content] [text] NULL,
	[category] [varchar](20) NULL,
	[dtcreated] [datetime] NULL,
	[createdby] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_ruleset](
	[name] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[packagename] [varchar](50) NULL,
	[domain] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[permission] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rulegroup](
	[name] [varchar](50) NOT NULL,
	[ruleset] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[sortorder] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[ruleset] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_fact_field](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[name] [varchar](50) NOT NULL,
	[title] [varchar](160) NULL,
	[datatype] [varchar](50) NULL,
	[sortorder] [int] NULL,
	[handler] [varchar](50) NULL,
	[lookuphandler] [varchar](50) NULL,
	[lookupkey] [varchar](50) NULL,
	[lookupvalue] [varchar](50) NULL,
	[lookupdatatype] [varchar](50) NULL,
	[multivalued] [int] NULL,
	[required] [int] NULL,
	[vardatatype] [varchar](50) NULL,
	[lovname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_fact_name] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_ruleset_fact](
	[ruleset] [varchar](50) NOT NULL,
	[rulefact] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sys_ruleset_fact] PRIMARY KEY CLUSTERED 
(
	[ruleset] ASC,
	[rulefact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_ruleset_actiondef](
	[ruleset] [varchar](50) NOT NULL,
	[actiondef] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sys_ruleset_actiondef] PRIMARY KEY CLUSTERED 
(
	[ruleset] ASC,
	[actiondef] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_report_member](
	[objid] [varchar](50) NOT NULL,
	[reportfolderid] [varchar](50) NULL,
	[userid] [varchar](50) NULL,
	[usergroupid] [varchar](50) NULL,
	[exclude] [text] NULL,
 CONSTRAINT [pk_sys_report_member] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_report_member_folder] ON [sys_report_member] 
(
	[reportfolderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_sys_report_member_user] ON [sys_report_member] 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_sys_report_member_usergroup] ON [sys_report_member] 
(
	[usergroupid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_securitygroup](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[usergroup_objid] [varchar](50) NULL,
	[exclude] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_securitygroup_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_securitygroup_usergroup] ON [sys_securitygroup] 
(
	[usergroup_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_usergroup_admin](
	[objid] [varchar](50) NOT NULL,
	[usergroupid] [varchar](50) NULL,
	[user_objid] [varchar](50) NULL,
	[user_username] [varchar](50) NULL,
	[user_firstname] [varchar](50) NOT NULL,
	[user_lastname] [varchar](50) NULL,
	[exclude] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_usergroup_admin_user] UNIQUE NONCLUSTERED 
(
	[usergroupid] ASC,
	[user_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_usergroup_admin] ON [sys_usergroup_admin] 
(
	[user_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_actiondef_param](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[name] [varchar](50) NOT NULL,
	[sortorder] [int] NULL,
	[title] [varchar](50) NULL,
	[datatype] [varchar](50) NULL,
	[handler] [varchar](50) NULL,
	[lookuphandler] [varchar](50) NULL,
	[lookupkey] [varchar](50) NULL,
	[lookupvalue] [varchar](50) NULL,
	[vardatatype] [varchar](50) NULL,
	[lovname] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_actiondef_name] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_usergroup_permission](
	[objid] [varchar](50) NOT NULL,
	[usergroup_objid] [varchar](50) NULL,
	[object] [varchar](25) NULL,
	[permission] [varchar](25) NULL,
	[title] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_usergroup_permission_usergroup] ON [sys_usergroup_permission] 
(
	[usergroup_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_report_admin](
	[objid] [varchar](50) NOT NULL,
	[userid] [varchar](50) NULL,
	[reportfolderid] [varchar](50) NULL,
	[exclude] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_report_admin_folder] ON [sys_report_admin] 
(
	[reportfolderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_sys_report_admin_user] ON [sys_report_admin] 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_report](
	[objid] [varchar](50) NOT NULL,
	[reportfolderid] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[filetype] [varchar](25) NULL,
	[dtcreated] [datetime] NULL,
	[createdby] [varchar](50) NULL,
	[datasetid] [varchar](50) NULL,
 CONSTRAINT [pk_sys_report] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_report_dataset] ON [sys_report] 
(
	[datasetid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_sys_report_entry_folder] ON [sys_report] 
(
	[reportfolderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_org](
	[objid] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[orgclass] [varchar](50) NULL,
	[parent_objid] [varchar](50) NULL,
	[parent_orgclass] [varchar](50) NULL,
	[code] [varchar](50) NULL,
	[root] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [idx_org_name] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[parent_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_orgcode] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_org] ON [sys_org] 
(
	[parent_orgclass] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_sys_org_orgclass] ON [sys_org] 
(
	[orgclass] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [structurematerial](
	[structure_objid] [varchar](50) NOT NULL,
	[material_objid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[structure_objid] ASC,
	[material_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_structurematerial_material] ON [structurematerial] 
(
	[material_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockreceipt](
	[objid] [varchar](50) NOT NULL,
	[receiptno] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[request_objid] [varchar](50) NULL,
	[request_reqno] [varchar](50) NULL,
	[dtfiled] [datetime] NULL,
	[reqtype] [varchar](25) NULL,
	[user_objid] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
	[itemclass] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_stockreceipt_receiptno] UNIQUE NONCLUSTERED 
(
	[receiptno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_stockreceipt_request] ON [stockreceipt] 
(
	[request_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockitem_unit](
	[itemid] [varchar](50) NOT NULL,
	[unit] [varchar](10) NOT NULL,
	[qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[itemid] ASC,
	[unit] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockissue](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](50) NULL,
	[request_objid] [varchar](50) NULL,
	[request_reqno] [varchar](50) NULL,
	[issueno] [varchar](50) NULL,
	[dtfiled] [datetime] NULL,
	[reqtype] [varchar](10) NULL,
	[user_objid] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
	[issueto_objid] [varchar](50) NULL,
	[issueto_name] [varchar](100) NULL,
	[issueto_title] [varchar](50) NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
	[itemclass] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [stockissue_issueno] UNIQUE NONCLUSTERED 
(
	[issueno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_stockissue_request] ON [stockissue] 
(
	[request_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [specialaccountsetting](
	[objid] [varchar](50) NOT NULL,
	[item_objid] [varchar](50) NOT NULL,
	[amount] [decimal](16, 2) NOT NULL,
	[collectiontypeid] [varchar](50) NOT NULL,
	[revtype] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [pin](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[barangayid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_lgu_barangay] ON [pin] 
(
	[barangayid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_pin_state] ON [pin] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ngas_revenueitem](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
	[refid] [varchar](50) NOT NULL,
	[refsource] [varchar](50) NOT NULL,
	[refno] [varchar](25) NOT NULL,
	[refdate] [datetime] NOT NULL,
	[item_objid] [varchar](50) NOT NULL,
	[fund_objid] [varchar](50) NOT NULL,
	[acct_objid] [varchar](50) NULL,
	[subacct_objid] [varchar](50) NULL,
	[collectiontype_objid] [varchar](50) NOT NULL,
	[amount] [numeric](16, 2) NOT NULL,
	[remittanceid] [varchar](50) NULL,
	[liquidationid] [varchar](50) NULL,
	[depositid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ngas_revenue_remittance](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ngas_revenue_deposit](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [realproperty](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[autonumber] [int] NOT NULL,
	[pintype] [varchar](5) NOT NULL,
	[pin] [varchar](30) NOT NULL,
	[ry] [int] NOT NULL,
	[claimno] [varchar](5) NULL,
	[section] [varchar](3) NULL,
	[parcel] [varchar](3) NULL,
	[cadastrallotno] [varchar](300) NULL,
	[blockno] [varchar](255) NULL,
	[surveyno] [varchar](30) NULL,
	[street] [varchar](100) NULL,
	[purok] [varchar](100) NULL,
	[north] [varchar](255) NULL,
	[south] [varchar](255) NULL,
	[east] [varchar](255) NULL,
	[west] [varchar](255) NULL,
	[barangayid] [varchar](50) NOT NULL,
	[lgutype] [varchar](50) NOT NULL,
	[previd] [varchar](50) NULL,
	[lguid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_barangayid] ON [realproperty] 
(
	[barangayid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_realproperty_blockno] ON [realproperty] 
(
	[blockno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_realproperty_brgysection] ON [realproperty] 
(
	[barangayid] ASC,
	[section] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_realproperty_brgystate] ON [realproperty] 
(
	[barangayid] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_realproperty_cadastrallotno] ON [realproperty] 
(
	[cadastrallotno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_realproperty_pin] ON [realproperty] 
(
	[pin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_realproperty_ry] ON [realproperty] 
(
	[ry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_realproperty_surveyno] ON [realproperty] 
(
	[surveyno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [remittance_fund](
	[objid] [varchar](50) NOT NULL,
	[remittanceid] [varchar](50) NULL,
	[fund_objid] [varchar](50) NULL,
	[fund_title] [varchar](100) NULL,
	[amount] [decimal](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_remittance_fund] UNIQUE NONCLUSTERED 
(
	[remittanceid] ASC,
	[fund_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [remittance_checkpayment](
	[objid] [varchar](50) NOT NULL,
	[remittanceid] [varchar](50) NULL,
	[amount] [decimal](16, 2) NULL,
	[voided] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_remittance_checkpayment_remittance] ON [remittance_checkpayment] 
(
	[remittanceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [remittance_cashticket](
	[objid] [varchar](50) NOT NULL,
	[remittanceid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [planttreeunitvalue](
	[objid] [varchar](50) NOT NULL,
	[planttreerysettingid] [varchar](50) NOT NULL,
	[planttree_objid] [varchar](50) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](25) NOT NULL,
	[unitvalue] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_planttreeunitvalue_settingplanttreecode] UNIQUE NONCLUSTERED 
(
	[planttreerysettingid] ASC,
	[planttree_objid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_planttreeunitvalue_settingplanttreename] UNIQUE NONCLUSTERED 
(
	[planttreerysettingid] ASC,
	[planttree_objid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_planttreeunitvalue_planttree] ON [planttreeunitvalue] 
(
	[planttree_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_planttreeunitvalue_planttreeunitvalue] ON [planttreeunitvalue] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [planttreeassesslevel](
	[objid] [varchar](50) NOT NULL,
	[planttreerysettingid] [varchar](50) NOT NULL,
	[code] [varchar](25) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[rate] [numeric](16, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_planttreeassesslevel_settingcode] UNIQUE NONCLUSTERED 
(
	[planttreerysettingid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_planttreeassesslevel_settingname] UNIQUE NONCLUSTERED 
(
	[planttreerysettingid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_planttreeassesslevel_planttreeassesslevel] ON [planttreeassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [resectionitem](
	[objid] [varchar](50) NOT NULL,
	[resectionid] [varchar](50) NOT NULL,
	[newsection] [varchar](3) NOT NULL,
	[landcount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_resectionitem_sectionno] UNIQUE NONCLUSTERED 
(
	[resectionid] ASC,
	[newsection] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [revenueitem_attribute](
	[objid] [varchar](50) NOT NULL,
	[revitemid] [varchar](50) NULL,
	[attribute_objid] [varchar](50) NULL,
	[account_objid] [varchar](50) NULL,
	[account_code] [varchar](50) NULL,
	[account_title] [varchar](250) NULL,
 CONSTRAINT [PK_revenueitem_attribute] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_revitemid_attribute_objid] UNIQUE NONCLUSTERED 
(
	[revitemid] ASC,
	[attribute_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpt_requirement](
	[objid] [varchar](50) NOT NULL,
	[requirementtypeid] [varchar](50) NOT NULL,
	[handler] [varchar](50) NOT NULL,
	[refid] [varchar](50) NOT NULL,
	[value_objid] [varchar](50) NULL,
	[value_txnno] [varchar](50) NULL,
	[value_txndate] [date] NULL,
	[value_txnamount] [numeric](16, 2) NULL,
	[value_remarks] [varchar](2000) NULL,
	[complied] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptrequirement_refid] ON [rpt_requirement] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptrequirement_requirementtypeid] ON [rpt_requirement] 
(
	[requirementtypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptrequirement_valueobjid] ON [rpt_requirement] 
(
	[value_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptbill_ledger](
	[rptledgerid] [varchar](50) NOT NULL,
	[rptbillid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rptledgerid] ASC,
	[rptbillid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashticket_control](
	[objid] [varchar](50) NOT NULL,
	[controlid] [varchar](50) NULL,
	[assignee_objid] [varchar](50) NULL,
	[assignee_name] [varchar](50) NULL,
	[qtyin] [int] NULL,
	[qtyissued] [int] NULL,
	[qtybalance] [int] NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_controlid_assignee] UNIQUE NONCLUSTERED 
(
	[controlid] ASC,
	[assignee_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [cashticket_control_controlid] ON [cashticket_control] 
(
	[controlid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashticket](
	[objid] [varchar](50) NOT NULL,
	[denomination] [decimal](10, 2) NOT NULL,
 CONSTRAINT [pk_cashticket] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_stockitem_cashticket_cashreceiptform] ON [cashticket] 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashbook](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[code] [varchar](50) NULL,
	[title] [varchar](100) NULL,
	[description] [varchar](100) NULL,
	[type] [varchar](50) NULL,
	[subacct_objid] [varchar](50) NULL,
	[subacct_name] [varchar](50) NULL,
	[fund_objid] [varchar](50) NULL,
	[fund_code] [varchar](50) NULL,
	[fund_title] [varchar](100) NULL,
	[org_objid] [varchar](50) NULL,
	[org_code] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
	[beginbalance] [decimal](16, 2) NULL,
	[forwardbalance] [decimal](16, 2) NULL,
	[totaldr] [decimal](16, 2) NULL,
	[totalcr] [decimal](16, 2) NULL,
	[endbalance] [decimal](16, 2) NULL,
	[currentlineno] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_subacct_fund_type] UNIQUE NONCLUSTERED 
(
	[subacct_objid] ASC,
	[fund_objid] ASC,
	[type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_cashbook_fund] ON [cashbook] 
(
	[fund_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_changeinfo](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[dtfiled] [datetime] NULL,
	[filedby_objid] [varchar](50) NULL,
	[filedby_name] [varchar](100) NULL,
	[owner_name] [varchar](100) NULL,
	[owner_objid] [varchar](50) NULL,
	[owner_address] [varchar](255) NULL,
	[barangay_objid] [varchar](50) NULL,
	[barangay_name] [varchar](50) NULL,
	[tradename] [varchar](255) NULL,
	[businessaddress] [varchar](255) NULL,
	[orgtype] [varchar](50) NULL,
	[businessname] [varchar](255) NULL,
	[pin] [varchar](50) NULL,
 CONSTRAINT [PK_business_changeinfo] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bppayment](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[applicationid] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[refdate] [date] NULL,
	[amount] [decimal](18, 2) NULL,
	[remarks] [varchar](255) NULL,
	[voided] [int] NULL,
	[payoption] [varchar](50) NULL,
	[qtr] [int] NULL,
	[reftype] [varchar](50) NULL,
	[refid] [varchar](50) NULL,
 CONSTRAINT [PK_bppayment] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [brgyshareitem](
	[objid] [varchar](50) NOT NULL,
	[brgyshareid] [varchar](50) NOT NULL,
	[barangayid] [varchar](50) NOT NULL,
	[basic] [numeric](16, 2) NOT NULL,
	[basicint] [numeric](16, 2) NOT NULL,
	[basicdisc] [numeric](16, 2) NOT NULL,
	[basicshare] [numeric](16, 2) NOT NULL,
	[basicintshare] [numeric](16, 2) NOT NULL,
	[commonshare] [numeric](16, 2) NULL,
	[basiccurrent] [numeric](16, 2) NULL,
	[basicprevious] [numeric](16, 2) NULL,
	[basiccollection] [numeric](16, 2) NULL,
	[basicintcollection] [numeric](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_brgyshareitem_brgyshare_brgy] UNIQUE NONCLUSTERED 
(
	[brgyshareid] ASC,
	[barangayid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_taxcredit](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[totaldr] [decimal](18, 2) NULL,
	[totalcr] [decimal](18, 2) NULL,
	[balance] [decimal](18, 2) NULL,
	[currentlineno] [int] NULL,
 CONSTRAINT [PK_business_taxcredit] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[receiptno] [varchar](50) NOT NULL,
	[receiptdate] [datetime] NOT NULL,
	[txnmode] [varchar](10) NOT NULL,
	[payer_objid] [varchar](50) NULL,
	[payer_name] [varchar](1500) NULL,
	[paidby] [varchar](1500) NULL,
	[paidbyaddress] [varchar](100) NOT NULL,
	[amount] [decimal](16, 2) NOT NULL,
	[collector_objid] [varchar](50) NOT NULL,
	[collector_name] [varchar](100) NOT NULL,
	[collector_title] [varchar](50) NOT NULL,
	[totalcash] [decimal](16, 2) NOT NULL,
	[totalnoncash] [decimal](16, 2) NOT NULL,
	[cashchange] [decimal](16, 2) NOT NULL,
	[totalcredit] [decimal](16, 2) NOT NULL,
	[org_objid] [varchar](50) NOT NULL,
	[org_name] [varchar](50) NOT NULL,
	[formno] [varchar](50) NOT NULL,
	[series] [int] NOT NULL,
	[controlid] [varchar](50) NOT NULL,
	[collectiontype_objid] [varchar](50) NULL,
	[collectiontype_name] [varchar](100) NULL,
	[user_objid] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
	[remarks] [varchar](200) NULL,
	[subcollector_objid] [varchar](50) NULL,
	[subcollector_name] [varchar](100) NULL,
	[subcollector_title] [varchar](50) NULL,
	[formtype] [varchar](25) NULL,
	[stub] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_cashereceipt_userid] ON [cashreceipt] 
(
	[user_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_cashreceipt_afcontrol] ON [cashreceipt] 
(
	[controlid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_collectorid] ON [cashreceipt] 
(
	[collector_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_collectorname] ON [cashreceipt] 
(
	[collector_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_receiptno] ON [cashreceipt] 
(
	[receiptno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_state] ON [cashreceipt] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [afserial_inventory_detail](
	[objid] [varchar](50) NOT NULL,
	[controlid] [varchar](50) NULL,
	[lineno] [int] NULL,
	[refid] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[reftype] [varchar](50) NULL,
	[refdate] [datetime] NULL,
	[txndate] [datetime] NULL,
	[txntype] [varchar](25) NULL,
	[receivedstartseries] [int] NULL,
	[receivedendseries] [int] NULL,
	[beginstartseries] [int] NULL,
	[beginendseries] [int] NULL,
	[issuedstartseries] [int] NULL,
	[issuedendseries] [int] NULL,
	[endingstartseries] [int] NULL,
	[endingendseries] [int] NULL,
	[cancelledstartseries] [int] NULL,
	[cancelledendseries] [int] NULL,
	[qtyreceived] [int] NULL,
	[qtybegin] [int] NULL,
	[qtyissued] [int] NULL,
	[qtyending] [int] NULL,
	[qtycancelled] [int] NULL,
	[remarks] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_afcontrol_detail_afcontrol] ON [afserial_inventory_detail] 
(
	[controlid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [afserial_control](
	[controlid] [varchar](50) NOT NULL,
	[txnmode] [varchar](10) NULL,
	[assignee_objid] [varchar](50) NULL,
	[assignee_name] [varchar](50) NULL,
	[currentseries] [int] NULL,
	[qtyissued] [int] NULL,
	[active] [int] NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[controlid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_controlid_mode_assignee] UNIQUE NONCLUSTERED 
(
	[controlid] ASC,
	[txnmode] ASC,
	[assignee_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [afserial](
	[objid] [varchar](50) NOT NULL,
	[serieslength] [int] NOT NULL,
 CONSTRAINT [pk_afserial] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_stockitem_afserial_cashreceiptform] ON [afserial] 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [account_incometarget](
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ap_detail](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[txndate] [datetime] NULL,
	[txnrefid] [varchar](50) NULL,
	[txnrefno] [varchar](50) NULL,
	[txnreftype] [varchar](50) NULL,
	[particulars] [varchar](255) NULL,
	[dr] [decimal](16, 2) NULL,
	[cr] [decimal](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ap_detail_ap] ON [ap_detail] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bankaccount_entry](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[txndate] [datetime] NULL,
	[refdate] [datetime] NULL,
	[refid] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[reftype] [varchar](50) NULL,
	[particulars] [varchar](255) NULL,
	[dr] [decimal](16, 2) NULL,
	[cr] [decimal](16, 2) NULL,
	[runbalance] [decimal](16, 2) NULL,
	[lineno] [int] NULL,
	[postingrefid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_bankaccount_parent_refid_reftype] UNIQUE NONCLUSTERED 
(
	[parentid] ASC,
	[refid] ASC,
	[reftype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_parentid_lineno] UNIQUE NONCLUSTERED 
(
	[parentid] ASC,
	[lineno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [bankaccount_parent] ON [bankaccount_entry] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_bankaccount_refid] ON [bankaccount_entry] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bankaccount_account](
	[objid] [varchar](50) NOT NULL,
	[acctid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bankaccount_account_account] ON [bankaccount_account] 
(
	[acctid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgassesslevel](
	[objid] [varchar](50) NOT NULL,
	[bldgrysettingid] [varchar](50) NOT NULL,
	[classification_objid] [varchar](50) NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[fixrate] [int] NOT NULL,
	[rate] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgassesslevel_bdlgrysettingid_name] UNIQUE NONCLUSTERED 
(
	[bldgrysettingid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgassesslevel_bldgrysettingid_code] UNIQUE NONCLUSTERED 
(
	[bldgrysettingid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgassesslevel_bldgrysettingid] ON [bldgassesslevel] 
(
	[bldgrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgassesslevel_propertyclassification] ON [bldgassesslevel] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [bldgassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgadditionalitem](
	[objid] [varchar](50) NOT NULL,
	[bldgrysettingid] [varchar](50) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[unit] [varchar](25) NOT NULL,
	[expr] [varchar](100) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgadditionalitem_settingcode] UNIQUE NONCLUSTERED 
(
	[bldgrysettingid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgadditionalitem_settingname] UNIQUE NONCLUSTERED 
(
	[bldgrysettingid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgadditionalitem] ON [bldgadditionalitem] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [bldgadditionalitem] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ar_detail](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[txndate] [datetime] NULL,
	[txnrefid] [varchar](50) NULL,
	[txnrefno] [varchar](50) NULL,
	[txnreftype] [varchar](50) NULL,
	[particulars] [varchar](255) NULL,
	[dr] [decimal](16, 2) NULL,
	[cr] [decimal](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_ar_txnrefno] UNIQUE NONCLUSTERED 
(
	[txnrefno] ASC,
	[txnreftype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ar_detail_ar] ON [ar_detail] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgtype](
	[objid] [varchar](50) NOT NULL,
	[bldgrysettingid] [varchar](50) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[basevaluetype] [varchar](10) NOT NULL,
	[residualrate] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgtype_bldgrysettingid_code] UNIQUE NONCLUSTERED 
(
	[bldgrysettingid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgtype_bldgrysettingid_name] UNIQUE NONCLUSTERED 
(
	[bldgrysettingid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [bldgtype] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bpapplication_requirement](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[applicationid] [varchar](50) NULL,
	[refid] [varchar](50) NULL,
	[reftype] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[issuedby] [varchar](100) NULL,
	[placeissued] [varchar](100) NULL,
	[title] [varchar](50) NULL,
	[remarks] [varchar](255) NULL,
	[status] [varchar](25) NULL,
	[step] [varchar](50) NULL,
	[completedby_objid] [varchar](50) NULL,
	[completedby_name] [varchar](50) NULL,
	[dtcompleted] [datetime] NULL,
 CONSTRAINT [PK_bpapplication_requirement] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bpapplication](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](50) NULL,
	[appno] [varchar](50) NULL,
	[apptype] [varchar](25) NULL,
	[amendtype] [varchar](50) NULL,
	[dtfiled] [date] NULL,
	[txndate] [datetime] NULL,
	[tradename] [varchar](255) NULL,
	[owner_objid] [varchar](50) NULL,
	[owner_name] [varchar](255) NULL,
	[owner_address] [varchar](255) NULL,
	[businessaddress] [varchar](255) NULL,
	[barangay_objid] [varchar](50) NULL,
	[barangay_name] [varchar](50) NULL,
	[orgtype] [varchar](50) NULL,
	[yearstarted] [int] NULL,
	[appyear] [int] NULL,
	[txnmode] [varchar](25) NULL,
	[businessid] [varchar](50) NULL,
	[businessname] [varchar](255) NULL,
	[appinfos] [text] NULL,
	[assessmentinfos] [text] NULL,
	[lobs] [text] NULL,
	[requirements] [text] NULL,
	[taxfees] [text] NULL,
	[assessedby_objid] [varchar](50) NULL,
	[assessedby_name] [varchar](255) NULL,
	[createdby_objid] [varchar](50) NULL,
	[createdby_name] [varchar](255) NULL,
	[approvedby_objid] [varchar](50) NULL,
	[approvedby_name] [varchar](255) NULL,
	[dtreleased] [datetime] NULL,
	[task_objid] [varchar](50) NULL,
	[totals_tax] [decimal](18, 2) NULL,
	[totals_regfee] [decimal](18, 2) NULL,
	[totals_othercharge] [decimal](18, 2) NULL,
	[totals_total] [decimal](18, 2) NULL,
	[remarks] [varchar](255) NULL,
 CONSTRAINT [PK_bpapplication_1] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [directcash_collection_item](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
	[item_objid] [varchar](50) NOT NULL,
	[amount] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machassesslevel](
	[objid] [varchar](50) NOT NULL,
	[machrysettingid] [varchar](50) NOT NULL,
	[classification_objid] [varchar](50) NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[fixrate] [int] NOT NULL,
	[rate] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_machassesslevel_settingcode] UNIQUE NONCLUSTERED 
(
	[machrysettingid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_machassesslevel_settingname] UNIQUE NONCLUSTERED 
(
	[machrysettingid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_machassesslevel_propertyclassification] ON [machassesslevel] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_machassesslevel_previd] ON [machassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [machassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [liquidation_cashier_fund](
	[objid] [varchar](50) NOT NULL,
	[liquidationid] [varchar](50) NULL,
	[fund_objid] [varchar](50) NULL,
	[fund_title] [varchar](100) NULL,
	[cashier_objid] [varchar](50) NULL,
	[cashier_name] [varchar](50) NULL,
	[amount] [decimal](16, 2) NULL,
	[totalcash] [decimal](16, 2) NULL,
	[totalnoncash] [decimal](16, 2) NULL,
	[cashbreakdown] [varchar](600) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_liquidation_cashier_fund_liquidation] ON [liquidation_cashier_fund] 
(
	[liquidationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machforex](
	[objid] [varchar](50) NOT NULL,
	[machrysettingid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[forex] [numeric](10, 6) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_machforex_settingyear] UNIQUE NONCLUSTERED 
(
	[machrysettingid] ASC,
	[year] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_machforex_previd] ON [machforex] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [machforex] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [liquidation_remittance](
	[objid] [varchar](50) NOT NULL,
	[liquidationid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_liquidationitem_liquidation] ON [liquidation_remittance] 
(
	[liquidationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lcuvstripping](
	[objid] [varchar](50) NOT NULL,
	[landrysettingid] [varchar](50) NOT NULL,
	[classification_objid] [varchar](50) NOT NULL,
	[striplevel] [int] NOT NULL,
	[rate] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_lcuvstripping_landrysetting] ON [lcuvstripping] 
(
	[landrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_lcuvstripping_propertyclassification] ON [lcuvstripping] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lcuvstripping_previd] ON [lcuvstripping] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lcuvspecificclass](
	[objid] [varchar](50) NOT NULL,
	[landrysettingid] [varchar](50) NOT NULL,
	[classification_objid] [varchar](50) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[areatype] [varchar](10) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lcuvspecificclass_name] UNIQUE NONCLUSTERED 
(
	[landrysettingid] ASC,
	[classification_objid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_lcuvspecificclass_propertyclassification] ON [lcuvspecificclass] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lcuvspecificclass_previd] ON [lcuvspecificclass] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [lcuvspecificclass] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landadjustmenttype](
	[objid] [varchar](50) NOT NULL,
	[landrysettingid] [varchar](50) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[expr] [varchar](1000) NOT NULL,
	[appliedto] [varchar](150) NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_landadjustment_landrysetting] ON [landadjustmenttype] 
(
	[landrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_landadjustmenttype] ON [landadjustmenttype] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [landadjustmenttype] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landassesslevel](
	[objid] [varchar](50) NOT NULL,
	[landrysettingid] [varchar](50) NOT NULL,
	[classification_objid] [varchar](50) NULL,
	[code] [varchar](20) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[fixrate] [int] NOT NULL,
	[rate] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_landassesslevel_code] UNIQUE NONCLUSTERED 
(
	[landrysettingid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_landassesslevel_name] UNIQUE NONCLUSTERED 
(
	[landrysettingid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_landassesslevel_propertyclassification] ON [landassesslevel] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_landassesslevel_previd] ON [landassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [landassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscitemvalue](
	[objid] [varchar](50) NOT NULL,
	[miscrysettingid] [varchar](50) NOT NULL,
	[miscitem_objid] [varchar](50) NOT NULL,
	[expr] [varchar](100) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_miscitemvalue_rysetting_item] UNIQUE NONCLUSTERED 
(
	[miscrysettingid] ASC,
	[miscitem_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_miscitemvalue_miscitem] ON [miscitemvalue] 
(
	[miscitem_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_miscitemvalue_previd] ON [miscitemvalue] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [miscitemvalue] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscassesslevel](
	[objid] [varchar](50) NOT NULL,
	[miscrysettingid] [varchar](50) NOT NULL,
	[classification_objid] [varchar](50) NULL,
	[code] [varchar](10) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[fixrate] [int] NOT NULL,
	[rate] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_miscassesslevel_settingcode] UNIQUE NONCLUSTERED 
(
	[miscrysettingid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_miscassesslevel_settingname] UNIQUE NONCLUSTERED 
(
	[miscrysettingid] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_miscassesslevel_classification] ON [miscassesslevel] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_miscassesslevel_previd] ON [miscassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [miscassesslevel] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscassesslevelrange](
	[objid] [varchar](50) NOT NULL,
	[miscassesslevelid] [varchar](50) NOT NULL,
	[miscrysettingid] [varchar](50) NOT NULL,
	[mvfrom] [numeric](16, 2) NOT NULL,
	[mvto] [numeric](16, 2) NOT NULL,
	[rate] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_miscassesslevelrange_miscassesslevel] ON [miscassesslevelrange] 
(
	[miscassesslevelid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_miscassesslevelrange_miscrysetting] ON [miscassesslevelrange] 
(
	[miscrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landadjustmenttype_classification](
	[landadjustmenttypeid] [varchar](50) NOT NULL,
	[classification_objid] [varchar](50) NOT NULL,
	[landrysettingid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[landadjustmenttypeid] ASC,
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_landadjustment_classification_landrysetting] ON [landadjustmenttype_classification] 
(
	[landrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landadjustmenttype_classification_classification] ON [landadjustmenttype_classification] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landassesslevelrange](
	[objid] [varchar](50) NOT NULL,
	[landassesslevelid] [varchar](50) NOT NULL,
	[landrysettingid] [varchar](50) NOT NULL,
	[mvfrom] [numeric](16, 2) NOT NULL,
	[mvto] [numeric](16, 2) NOT NULL,
	[rate] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_landassesslevelrange_landassesslevel] ON [landassesslevelrange] 
(
	[landassesslevelid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_landassesslevelrange_rootid] ON [landassesslevelrange] 
(
	[landrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgassesslevelrange](
	[objid] [varchar](50) NOT NULL,
	[bldgassesslevelid] [varchar](50) NOT NULL,
	[bldgrysettingid] [varchar](50) NOT NULL,
	[mvfrom] [numeric](16, 2) NOT NULL,
	[mvto] [numeric](16, 2) NOT NULL,
	[rate] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgassesslevelid_mvfrom] UNIQUE NONCLUSTERED 
(
	[bldgassesslevelid] ASC,
	[mvfrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgassesslevelrange_bldgrysetting] ON [bldgassesslevelrange] 
(
	[bldgrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [lcuvsubclass](
	[objid] [varchar](50) NOT NULL,
	[specificclass_objid] [varchar](50) NOT NULL,
	[landrysettingid] [varchar](50) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](25) NOT NULL,
	[unitvalue] [numeric](10, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lcuvsubclass_code] UNIQUE NONCLUSTERED 
(
	[landrysettingid] ASC,
	[specificclass_objid] ASC,
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_lcuvsubclass_name] UNIQUE NONCLUSTERED 
(
	[landrysettingid] ASC,
	[specificclass_objid] ASC,
	[code] ASC,
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_lcuvsubclass_lcuvspecificclass] ON [lcuvsubclass] 
(
	[specificclass_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lcuvsubclass_previd] ON [lcuvsubclass] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_lcuvsubclass_rootid] ON [lcuvsubclass] 
(
	[landrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [lcuvsubclass] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceiptitem](
	[objid] [varchar](50) NOT NULL,
	[receiptid] [varchar](50) NULL,
	[item_objid] [varchar](50) NULL,
	[item_code] [varchar](100) NULL,
	[item_title] [varchar](100) NULL,
	[amount] [decimal](16, 2) NULL,
	[remarks] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_cashreceiptitem] ON [cashreceiptitem] 
(
	[receiptid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_void](
	[objid] [varchar](50) NOT NULL,
	[receiptid] [varchar](50) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[postedby_objid] [varchar](50) NOT NULL,
	[postedby_name] [varchar](100) NOT NULL,
	[reason] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [FK_voidreceipt_receipt] UNIQUE NONCLUSTERED 
(
	[receiptid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceiptpayment_check](
	[objid] [varchar](50) NOT NULL,
	[receiptid] [varchar](50) NULL,
	[bank] [varchar](50) NULL,
	[checkno] [varchar](25) NULL,
	[checkdate] [datetime] NULL,
	[amount] [decimal](16, 2) NULL,
	[particulars] [varchar](255) NULL,
	[bankid] [varchar](50) NULL,
	[deposittype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_cashreceiptpayment_check] ON [cashreceiptpayment_check] 
(
	[receiptid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgtype_storeyadjustment](
	[objid] [varchar](50) NOT NULL,
	[bldgtypeid] [varchar](50) NOT NULL,
	[bldgrysettingid] [varchar](50) NOT NULL,
	[floorno] [varchar](10) NOT NULL,
	[rate] [numeric](16, 2) NOT NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgtype_storeyadjustment_settingtypefloorno] UNIQUE NONCLUSTERED 
(
	[bldgtypeid] ASC,
	[bldgrysettingid] ASC,
	[floorno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgtype_storeyadjustment] ON [bldgtype_storeyadjustment] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgtype_storeyadjustment_bldgrysetting] ON [bldgtype_storeyadjustment] 
(
	[bldgrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgtype_depreciation](
	[objid] [varchar](50) NOT NULL,
	[bldgtypeid] [varchar](50) NOT NULL,
	[bldgrysettingid] [varchar](50) NOT NULL,
	[agefrom] [int] NOT NULL,
	[ageto] [int] NOT NULL,
	[rate] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgtype_depreciation_settingtypeagefrom] UNIQUE NONCLUSTERED 
(
	[bldgtypeid] ASC,
	[bldgrysettingid] ASC,
	[agefrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgtype_depreciation_bldgrysetting] ON [bldgtype_depreciation] 
(
	[bldgrysettingid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_bldgtypeid] ON [bldgtype_depreciation] 
(
	[bldgtypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgkindbucc](
	[objid] [varchar](50) NOT NULL,
	[bldgrysettingid] [varchar](50) NOT NULL,
	[bldgtypeid] [varchar](50) NOT NULL,
	[bldgkind_objid] [varchar](50) NOT NULL,
	[basevaluetype] [varchar](25) NOT NULL,
	[basevalue] [numeric](10, 2) NOT NULL,
	[minbasevalue] [numeric](10, 2) NOT NULL,
	[maxbasevalue] [numeric](10, 2) NOT NULL,
	[gapvalue] [int] NOT NULL,
	[minarea] [numeric](10, 2) NOT NULL,
	[maxarea] [numeric](10, 2) NOT NULL,
	[bldgclass] [varchar](50) NULL,
	[previd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_bldgkindbucc_settingtypekind] UNIQUE NONCLUSTERED 
(
	[bldgrysettingid] ASC,
	[bldgtypeid] ASC,
	[bldgkind_objid] ASC,
	[bldgclass] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgkindbucc_bldgkind] ON [bldgkindbucc] 
(
	[bldgkind_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgkindbucc_bldgkindbucc] ON [bldgkindbucc] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgkindbucc_bldgtype] ON [bldgkindbucc] 
(
	[bldgtypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [bldgkindbucc] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bankdeposit_liquidation](
	[objid] [varchar](50) NOT NULL,
	[bankdepositid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bankdeposit_liquidation] ON [bankdeposit_liquidation] 
(
	[bankdepositid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashbook_entry](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[txndate] [datetime] NULL,
	[refdate] [datetime] NULL,
	[refid] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[reftype] [varchar](50) NULL,
	[particulars] [varchar](3000) NULL,
	[dr] [decimal](16, 2) NULL,
	[cr] [decimal](16, 2) NULL,
	[runbalance] [decimal](16, 2) NULL,
	[lineno] [int] NULL,
	[postingrefid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_parentid_linenox] UNIQUE NONCLUSTERED 
(
	[parentid] ASC,
	[lineno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [cashbook_parent] ON [cashbook_entry] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_refid] ON [cashbook_entry] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [uix_parent_refid_reftype] ON [cashbook_entry] 
(
	[parentid] ASC,
	[refid] ASC,
	[reftype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [business_taxcredit_detail](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[lineno] [int] NULL,
	[particulars] [varchar](100) NULL,
	[refid] [varchar](50) NULL,
	[refdate] [date] NULL,
	[refno] [varchar](50) NULL,
	[reftype] [varchar](20) NULL,
	[dr] [decimal](18, 2) NULL,
	[cr] [decimal](18, 2) NULL,
 CONSTRAINT [PK_business_taxcredit_detail] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bpapplication_task](
	[objid] [varchar](50) NOT NULL,
	[applicationid] [varchar](50) NULL,
	[parentid] [varchar](50) NULL,
	[channel] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[assignee_objid] [varchar](50) NULL,
	[assignee_name] [varchar](255) NULL,
	[message] [varchar](255) NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[sender_objid] [varchar](50) NULL,
	[sender_name] [varchar](255) NULL,
	[action] [varchar](50) NULL,
 CONSTRAINT [PK_bpapplication_task] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_business](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[applicationid] [varchar](50) NULL,
	[tradename] [varchar](255) NULL,
	[payoption] [varchar](50) NULL,
	[qtr] [int] NULL,
 CONSTRAINT [PK_cashreceipt_business] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [cashreceipt_ctc_individual](
	[objid] [varchar](50) NOT NULL,
	[payer_profession] [varchar](50) NULL,
	[payer_citizenship] [varchar](50) NULL,
	[payer_civilstatus] [varchar](25) NULL,
	[payer_height] [varchar](25) NULL,
	[payer_weight] [varchar](25) NULL,
	[additional_remarks] [varchar](100) NULL,
	[businessgross] [numeric](16, 2) NOT NULL,
	[annualsalary] [numeric](16, 2) NOT NULL,
	[propertyincome] [numeric](16, 2) NOT NULL,
	[basictax] [numeric](16, 2) NOT NULL,
	[salarytax] [numeric](16, 2) NOT NULL,
	[businessgrosstax] [numeric](16, 2) NOT NULL,
	[propertyincometax] [numeric](16, 2) NOT NULL,
	[additionaltax] [numeric](16, 2) NOT NULL,
	[totaltax] [numeric](16, 2) NOT NULL,
	[interest] [numeric](16, 2) NOT NULL,
	[amountdue] [numeric](16, 2) NOT NULL,
	[interestdue] [numeric](16, 2) NOT NULL,
	[barangay_objid] [varchar](50) NULL,
	[barangay_name] [varchar](50) NULL,
	[brgytaxshare] [numeric](16, 2) NOT NULL,
	[brgyinterestshare] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [cashreceipt_ctc_corporate](
	[objid] [varchar](50) NOT NULL,
	[payer_tin] [varchar](50) NULL,
	[payer_orgtype] [varchar](50) NULL,
	[payer_nature] [varchar](50) NULL,
	[payer_dtregistered] [datetime] NULL,
	[payer_placeregistered] [varchar](100) NULL,
	[additional_remarks] [varchar](100) NULL,
	[realpropertyav] [numeric](16, 2) NOT NULL,
	[businessgross] [numeric](16, 2) NOT NULL,
	[basictax] [numeric](16, 2) NOT NULL,
	[propertyavtax] [numeric](16, 2) NOT NULL,
	[businessgrosstax] [numeric](16, 2) NOT NULL,
	[totaltax] [numeric](16, 2) NOT NULL,
	[interest] [numeric](16, 2) NOT NULL,
	[amountdue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_cashticket](
	[objid] [varchar](50) NOT NULL,
	[qtyissued] [int] NULL,
 CONSTRAINT [pk_cashreceipt_cashticket] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_cashreceipt_cashticket_cashreceipt] ON [cashreceipt_cashticket] 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_cancelseries](
	[objid] [varchar](50) NOT NULL,
	[receiptid] [varchar](50) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[postedby_objid] [varchar](50) NULL,
	[postedby_name] [varchar](100) NULL,
	[reason] [varchar](255) NULL,
	[controlid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machassesslevelrange](
	[objid] [varchar](50) NOT NULL,
	[machassesslevelid] [varchar](50) NOT NULL,
	[machrysettingid] [varchar](50) NOT NULL,
	[mvfrom] [numeric](16, 2) NOT NULL,
	[mvto] [numeric](16, 2) NOT NULL,
	[rate] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_machassesslevelrange_mvfrom] UNIQUE NONCLUSTERED 
(
	[machrysettingid] ASC,
	[machassesslevelid] ASC,
	[mvfrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_machassesslevelrange_machassesslevel] ON [machassesslevelrange] 
(
	[machassesslevelid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [remittance_cashreceipt](
	[objid] [varchar](50) NOT NULL,
	[remittanceid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_remittanceitem_remittance] ON [remittance_cashreceipt] 
(
	[remittanceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [remittance_afserial](
	[objid] [varchar](50) NOT NULL,
	[remittanceid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_remittance_afserial_remittance] ON [remittance_afserial] 
(
	[remittanceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpu](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[realpropertyid] [varchar](50) NULL,
	[rputype] [varchar](10) NOT NULL,
	[ry] [int] NOT NULL,
	[fullpin] [varchar](30) NULL,
	[suffix] [int] NOT NULL,
	[subsuffix] [int] NULL,
	[classification_objid] [varchar](50) NULL,
	[exemptiontype_objid] [varchar](50) NULL,
	[taxable] [int] NOT NULL,
	[totalareaha] [numeric](18, 6) NOT NULL,
	[totalareasqm] [numeric](18, 6) NOT NULL,
	[totalbmv] [numeric](16, 2) NOT NULL,
	[totalmv] [numeric](16, 2) NOT NULL,
	[totalav] [numeric](16, 2) NOT NULL,
	[hasswornamount] [int] NOT NULL,
	[swornamount] [numeric](16, 2) NOT NULL,
	[useswornamount] [int] NOT NULL,
	[previd] [varchar](50) NULL,
	[rpumasterid] [varchar](50) NULL,
	[reclassed] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rpu_realpropertyid] ON [rpu] 
(
	[realpropertyid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_classification_objid] ON [rpu] 
(
	[classification_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_previd] ON [rpu] 
(
	[previd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpu_fullpin] ON [rpu] 
(
	[fullpin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpu_ry_fullpin] ON [rpu] 
(
	[fullpin] ASC,
	[ry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpu_ry_state] ON [rpu] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpu_state] ON [rpu] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpy_ry] ON [rpu] 
(
	[ry] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockreceiptitem](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
	[item_objid] [varchar](50) NULL,
	[item_code] [varchar](50) NULL,
	[item_title] [varchar](255) NULL,
	[unit] [varchar](20) NULL,
	[qtyrequested] [int] NULL,
	[qtyreceived] [int] NULL,
	[remarks] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_stockreceiptitem_stockreceipt] ON [stockreceiptitem] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [stockissueitem](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NOT NULL,
	[item_objid] [varchar](50) NULL,
	[item_code] [varchar](50) NULL,
	[item_title] [varchar](255) NULL,
	[unit] [varchar](20) NULL,
	[qtyrequested] [int] NULL,
	[qtyissued] [int] NULL,
	[remarks] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_stockissueitem_stockissue] ON [stockissueitem] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_usergroup_member](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](10) NULL,
	[usergroup_objid] [varchar](50) NULL,
	[user_objid] [varchar](50) NOT NULL,
	[user_username] [varchar](50) NULL,
	[user_firstname] [varchar](50) NOT NULL,
	[user_lastname] [varchar](50) NOT NULL,
	[org_objid] [varchar](50) NULL,
	[org_name] [varchar](50) NULL,
	[org_orgclass] [varchar](50) NULL,
	[securitygroup_objid] [varchar](50) NULL,
	[exclude] [varchar](255) NULL,
	[displayname] [varchar](50) NULL,
	[jobtitle] [varchar](50) NULL,
 CONSTRAINT [PK_sys_usergroup_member] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_sys_usergroup_member] ON [sys_usergroup_member] 
(
	[user_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_sys_usergroup_member_org] ON [sys_usergroup_member] 
(
	[org_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_sys_usergroup_member_securitygorup] ON [sys_usergroup_member] 
(
	[securitygroup_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_user_firstname] ON [sys_usergroup_member] 
(
	[user_firstname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_user_lastname_firstname] ON [sys_usergroup_member] 
(
	[user_lastname] ASC,
	[user_firstname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_username] ON [sys_usergroup_member] 
(
	[user_username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NULL,
	[name] [varchar](50) NOT NULL,
	[ruleset] [varchar](50) NOT NULL,
	[rulegroup] [varchar](50) NULL,
	[title] [varchar](250) NULL,
	[description] [text] NULL,
	[salience] [int] NULL,
	[effectivefrom] [date] NULL,
	[effectiveto] [date] NULL,
	[dtfiled] [datetime] NULL,
	[user_objid] [varchar](50) NULL,
	[user_name] [varchar](100) NULL,
 CONSTRAINT [PK__sys_rule__530D6FE4157B1701] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uid_ruleset_name] UNIQUE NONCLUSTERED 
(
	[name] ASC,
	[ruleset] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [subcollector_remittance_cashreceipt](
	[objid] [varchar](50) NOT NULL,
	[remittanceid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_subcollector_remittance_cashreceipt_remittance] ON [subcollector_remittance_cashreceipt] 
(
	[remittanceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_condition](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[fact_name] [varchar](50) NULL,
	[fact_objid] [varchar](50) NULL,
	[varname] [varchar](50) NULL,
	[pos] [int] NULL,
	[ruletext] [text] NULL,
	[displaytext] [text] NULL,
	[dynamic_datatype] [varchar](50) NULL,
	[dynamic_key] [varchar](50) NULL,
	[dynamic_value] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_action](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[actiondef_objid] [varchar](50) NULL,
	[actiondef_name] [varchar](50) NULL,
	[pos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_deployed](
	[objid] [varchar](50) NOT NULL,
	[ruletext] [text] NULL,
 CONSTRAINT [pk_sys_rule_deployed] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceipt_business_item](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[fromqtr] [int] NULL,
	[toqtr] [int] NULL,
	[lob_objid] [varchar](50) NULL,
	[lob_name] [varchar](255) NULL,
	[year] [int] NULL,
	[paymentmode] [varchar](50) NULL,
 CONSTRAINT [PK_cashreceipt_business_item] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bankdeposit_entry_check](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bankdeposit_check] ON [bankdeposit_entry_check] 
(
	[parentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [faas](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[rpuid] [varchar](50) NULL,
	[datacapture] [int] NOT NULL,
	[autonumber] [int] NOT NULL,
	[utdno] [varchar](25) NOT NULL,
	[tdno] [varchar](25) NULL,
	[txntype_objid] [varchar](10) NULL,
	[effectivityyear] [int] NOT NULL,
	[effectivityqtr] [int] NOT NULL,
	[titletype] [varchar](10) NULL,
	[titleno] [varchar](50) NULL,
	[titledate] [datetime] NULL,
	[taxpayer_objid] [varchar](50) NULL,
	[taxpayer_name] [text] NULL,
	[taxpayer_address] [varchar](150) NULL,
	[owner_name] [text] NULL,
	[owner_address] [varchar](150) NULL,
	[administrator_objid] [varchar](50) NULL,
	[administrator_name] [varchar](800) NULL,
	[administrator_address] [varchar](150) NULL,
	[beneficiary_objid] [varchar](50) NULL,
	[beneficiary_name] [varchar](150) NULL,
	[beneficiary_address] [varchar](150) NULL,
	[memoranda] [varchar](1000) NULL,
	[cancelnote] [varchar](250) NULL,
	[restrictionid] [varchar](50) NULL,
	[backtaxyrs] [int] NOT NULL,
	[prevtdno] [varchar](500) NULL,
	[prevpin] [varchar](500) NULL,
	[prevowner] [text] NULL,
	[prevav] [numeric](16, 2) NOT NULL,
	[prevmv] [numeric](16, 2) NOT NULL,
	[cancelreason] [varchar](5) NULL,
	[canceldate] [datetime] NULL,
	[cancelledbytdnos] [varchar](2500) NULL,
	[lguid] [varchar](50) NOT NULL,
	[txntimestamp] [varchar](25) NOT NULL,
	[cancelledtimestamp] [varchar](25) NULL,
	[name] [varchar](100) NULL,
	[dtapproved] [date] NULL,
	[realpropertyid] [varchar](50) NULL,
	[lgutype] [varchar](25) NULL,
	[signatories] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_faas_utdno] UNIQUE NONCLUSTERED 
(
	[utdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_faas_entity] ON [faas] 
(
	[taxpayer_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_faas_entity_admin] ON [faas] 
(
	[administrator_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_faas_entity_beneficiary] ON [faas] 
(
	[beneficiary_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_faas_rpu] ON [faas] 
(
	[rpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_canceldate] ON [faas] 
(
	[canceldate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_administratorname] ON [faas] 
(
	[administrator_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_appraisedby] ON [faas] 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_beneficiary] ON [faas] 
(
	[beneficiary_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_cancelledtimestamp] ON [faas] 
(
	[cancelledtimestamp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_name] ON [faas] 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_prevpin] ON [faas] 
(
	[prevpin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_prevtdno] ON [faas] 
(
	[prevtdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_realproperty] ON [faas] 
(
	[realpropertyid] ASC
)
INCLUDE ( [objid]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_restrictionid] ON [faas] 
(
	[restrictionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_state] ON [faas] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_tdno] ON [faas] 
(
	[tdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_titleno] ON [faas] 
(
	[titleno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faas_txntimestamp] ON [faas] 
(
	[txntimestamp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landrpu](
	[objid] [varchar](50) NOT NULL,
	[idleland] [int] NOT NULL,
	[totallandbmv] [numeric](16, 2) NOT NULL,
	[totallandmv] [numeric](16, 2) NOT NULL,
	[totallandav] [numeric](16, 2) NOT NULL,
	[totalplanttreebmv] [numeric](16, 2) NOT NULL,
	[totalplanttreemv] [numeric](16, 2) NOT NULL,
	[totalplanttreeadjustment] [numeric](16, 2) NOT NULL,
	[totalplanttreeav] [numeric](16, 2) NOT NULL,
	[landvalueadjustment] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [liquidation_checkpayment](
	[objid] [varchar](50) NOT NULL,
	[liquidationid] [varchar](50) NOT NULL,
	[liquidationfundid] [varchar](50) NULL,
 CONSTRAINT [pk_liquidation_checkpayment] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_liquidation_checkpayment] ON [liquidation_checkpayment] 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_liquidation_checkpayment_liquidation] ON [liquidation_checkpayment] 
(
	[liquidationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscrpu](
	[objid] [varchar](50) NOT NULL,
	[actualuse_objid] [varchar](50) NULL,
	[landrpuid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_miscrpu_miscassesslevel] ON [miscrpu] 
(
	[actualuse_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machrpu](
	[objid] [varchar](50) NOT NULL,
	[landrpuid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_machrpu_landrpu] ON [machrpu] 
(
	[landrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscrpuitem](
	[objid] [varchar](50) NOT NULL,
	[miscrpuid] [varchar](50) NOT NULL,
	[miv_objid] [varchar](50) NOT NULL,
	[miscitem_objid] [varchar](50) NOT NULL,
	[expr] [varchar](255) NOT NULL,
	[depreciation] [numeric](16, 2) NOT NULL,
	[depreciatedvalue] [numeric](16, 2) NOT NULL,
	[basemarketvalue] [numeric](16, 2) NOT NULL,
	[marketvalue] [numeric](16, 2) NOT NULL,
	[assesslevel] [numeric](16, 2) NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_miscrpuitem_miscitem] ON [miscrpuitem] 
(
	[miscitem_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_miscrpuitem_miscitemvalue] ON [miscrpuitem] 
(
	[miv_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_miscrpuitem_miscrpu] ON [miscrpuitem] 
(
	[miscrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [mcsettlement](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NULL,
	[txnno] [varchar](25) NULL,
	[effectivityyear] [int] NOT NULL,
	[effectivityqtr] [int] NOT NULL,
	[memoranda] [varchar](2000) NULL,
	[prevfaas_objid] [varchar](50) NULL,
	[newfaas_objid] [varchar](50) NULL,
	[newtdno] [varchar](25) NULL,
	[signatories] [varchar](1000) NOT NULL,
	[lgutype] [varchar](25) NOT NULL,
	[lguid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_mcsettlement_state] ON [mcsettlement] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_mcsettlement_txnno] ON [mcsettlement] 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landdetail](
	[objid] [varchar](50) NOT NULL,
	[landrpuid] [varchar](50) NOT NULL,
	[subclass_objid] [varchar](50) NOT NULL,
	[specificclass_objid] [varchar](50) NOT NULL,
	[actualuse_objid] [varchar](50) NOT NULL,
	[stripping_objid] [varchar](50) NULL,
	[striprate] [numeric](16, 2) NOT NULL,
	[areatype] [varchar](10) NOT NULL,
	[addlinfo] [varchar](250) NULL,
	[area] [numeric](18, 6) NOT NULL,
	[areasqm] [numeric](18, 2) NOT NULL,
	[areaha] [numeric](18, 6) NOT NULL,
	[basevalue] [numeric](16, 2) NOT NULL,
	[unitvalue] [numeric](16, 2) NOT NULL,
	[taxable] [int] NOT NULL,
	[basemarketvalue] [numeric](16, 2) NOT NULL,
	[adjustment] [numeric](16, 2) NOT NULL,
	[landvalueadjustment] [numeric](16, 2) NOT NULL,
	[actualuseadjustment] [numeric](16, 2) NOT NULL,
	[marketvalue] [numeric](16, 2) NOT NULL,
	[assesslevel] [numeric](16, 2) NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_landdetail_actualuse] ON [landdetail] 
(
	[actualuse_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landdetail_landrpu] ON [landdetail] 
(
	[landrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landdetail_lcuvspecificclass] ON [landdetail] 
(
	[specificclass_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landdetail_lcuvstripping] ON [landdetail] 
(
	[stripping_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landdetail_lcuvsubclass] ON [landdetail] 
(
	[subclass_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [faasupdate](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[txnno] [varchar](10) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[faasid] [varchar](50) NOT NULL,
	[prevtitletype] [varchar](25) NULL,
	[prevtitleno] [varchar](25) NULL,
	[prevtitledate] [datetime] NULL,
	[prevtaxpayerid] [varchar](50) NOT NULL,
	[prevtaxpayername] [varchar](800) NOT NULL,
	[prevtaxpayeraddress] [varchar](150) NOT NULL,
	[prevownername] [varchar](800) NOT NULL,
	[prevowneraddress] [varchar](150) NOT NULL,
	[prevadministratorid] [varchar](50) NULL,
	[prevadministratorname] [varchar](150) NULL,
	[prevadministratoraddress] [varchar](100) NULL,
	[prevrestrictionid] [varchar](50) NULL,
	[prevmemoranda] [varchar](500) NOT NULL,
	[prevsurveyno] [varchar](100) NULL,
	[prevcadastrallotno] [varchar](100) NOT NULL,
	[prevblockno] [varchar](50) NULL,
	[prevpurok] [varchar](50) NULL,
	[prevstreet] [varchar](100) NULL,
	[prevnorth] [varchar](150) NOT NULL,
	[preveast] [varchar](150) NOT NULL,
	[prevsouth] [varchar](150) NOT NULL,
	[prevwest] [varchar](150) NOT NULL,
	[faas_titletype] [varchar](25) NULL,
	[faas_titleno] [varchar](25) NULL,
	[faas_titledate] [datetime] NULL,
	[faas_restrictionid] [varchar](50) NULL,
	[faas_memoranda] [varchar](500) NOT NULL,
	[rp_surveyno] [varchar](100) NULL,
	[rp_cadastrallotno] [varchar](100) NOT NULL,
	[rp_blockno] [varchar](50) NULL,
	[rp_street] [varchar](100) NULL,
	[rp_north] [varchar](150) NOT NULL,
	[rp_east] [varchar](150) NOT NULL,
	[rp_south] [varchar](150) NOT NULL,
	[rp_west] [varchar](150) NOT NULL,
	[faas_taxpayer_objid] [varchar](50) NOT NULL,
	[faas_taxpayer_name] [varchar](800) NOT NULL,
	[faas_taxpayer_address] [varchar](150) NOT NULL,
	[faas_owner_address] [varchar](800) NOT NULL,
	[faas_owner_name] [varchar](800) NOT NULL,
	[faas_administrator_name] [varchar](200) NULL,
	[faas_administrator_objid] [varchar](50) NULL,
	[faas_administrator_address] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_faasupdate_txnno] UNIQUE NONCLUSTERED 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_faasupdate_faas] ON [faasupdate] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [faasbacktax](
	[objid] [varchar](50) NOT NULL,
	[faasid] [varchar](50) NOT NULL,
	[ry] [int] NOT NULL,
	[tdno] [varchar](25) NOT NULL,
	[bmv] [numeric](16, 2) NOT NULL,
	[mv] [numeric](16, 2) NOT NULL,
	[av] [numeric](16, 2) NOT NULL,
	[effectivityyear] [int] NOT NULL,
	[effectivityqtr] [int] NOT NULL,
	[taxable] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_faasbacktax] ON [faasbacktax] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [faasannotation](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[annotationtype_objid] [varchar](50) NOT NULL,
	[faasid] [varchar](50) NOT NULL,
	[txnno] [varchar](6) NULL,
	[txndate] [datetime] NULL,
	[fileno] [varchar](25) NOT NULL,
	[orno] [varchar](10) NOT NULL,
	[ordate] [datetime] NOT NULL,
	[oramount] [numeric](16, 2) NOT NULL,
	[memoranda] [varchar](2000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_faasannotation_faas] ON [faasannotation] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_faasannotation_faasannotationtype] ON [faasannotation] 
(
	[annotationtype_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faasannotation_fileno] ON [faasannotation] 
(
	[fileno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faasannotation_orno] ON [faasannotation] 
(
	[orno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faasannotation_state] ON [faasannotation] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_faasannotation_txnno] ON [faasannotation] 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [consolidation](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[txnno] [varchar](6) NULL,
	[txndate] [datetime] NULL,
	[ry] [int] NOT NULL,
	[txntype_objid] [varchar](5) NOT NULL,
	[autonumber] [int] NOT NULL,
	[effectivityyear] [int] NOT NULL,
	[effectivityqtr] [int] NOT NULL,
	[newtdno] [varchar](25) NULL,
	[newutdno] [varchar](25) NOT NULL,
	[newtitletype] [varchar](25) NULL,
	[newtitleno] [varchar](25) NULL,
	[newtitledate] [datetime] NULL,
	[memoranda] [varchar](1500) NULL,
	[lguid] [varchar](50) NOT NULL,
	[lgutype] [varchar](50) NOT NULL,
	[newrpid] [varchar](50) NULL,
	[newrpuid] [varchar](50) NULL,
	[newfaasid] [varchar](50) NULL,
	[taxpayer_objid] [varchar](50) NULL,
	[taxpayer_name] [varchar](800) NULL,
	[taxpayer_address] [varchar](100) NULL,
	[owner_name] [varchar](800) NULL,
	[owner_address] [varchar](100) NULL,
	[administrator_objid] [varchar](50) NULL,
	[administrator_name] [varchar](100) NULL,
	[administrator_address] [varchar](100) NULL,
	[administratorid] [varchar](50) NULL,
	[administratorname] [varchar](150) NULL,
	[administratoraddress] [varchar](100) NULL,
	[signatories] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_consolidation_newutdno] UNIQUE NONCLUSTERED 
(
	[newutdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_consolidation_newfaas] ON [consolidation] 
(
	[newfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_consolidation_newrp] ON [consolidation] 
(
	[newrpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_consolidation_newrpu] ON [consolidation] 
(
	[newrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_consolidation_newtdno] ON [consolidation] 
(
	[newtdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_consolidation_ownername] ON [consolidation] 
(
	[owner_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_consolidation_taxpayername] ON [consolidation] 
(
	[taxpayer_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [assessmentnoticeitem](
	[objid] [varchar](50) NOT NULL,
	[assessmentnoticeid] [varchar](50) NOT NULL,
	[faasid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_assessmentnoticeitem_assessmentnotice] ON [assessmentnoticeitem] 
(
	[assessmentnoticeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_assessmentnoticeitem_faas] ON [assessmentnoticeitem] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgrpu](
	[objid] [varchar](50) NOT NULL,
	[landrpuid] [varchar](50) NULL,
	[houseno] [varchar](25) NULL,
	[psic] [varchar](20) NULL,
	[permitno] [varchar](20) NULL,
	[permitdate] [datetime] NULL,
	[permitissuedby] [varchar](50) NULL,
	[bldgtype_objid] [varchar](50) NULL,
	[bldgkindbucc_objid] [varchar](50) NULL,
	[basevalue] [numeric](16, 2) NOT NULL,
	[dtcompleted] [datetime] NULL,
	[dtoccupied] [datetime] NULL,
	[floorcount] [int] NOT NULL,
	[depreciation] [numeric](16, 2) NOT NULL,
	[depreciationvalue] [numeric](16, 2) NOT NULL,
	[totaladjustment] [numeric](16, 2) NOT NULL,
	[additionalinfo] [varchar](500) NULL,
	[bldgage] [int] NOT NULL,
	[percentcompleted] [int] NOT NULL,
	[bldgassesslevel_objid] [varchar](50) NULL,
	[assesslevel] [numeric](16, 2) NOT NULL,
	[condominium] [int] NOT NULL,
	[bldgclass] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgrpu_bldgassesslevel] ON [bldgrpu] 
(
	[bldgassesslevel_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgrpu_bldgkindbucc] ON [bldgrpu] 
(
	[bldgkindbucc_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgrpu_bldgtype] ON [bldgrpu] 
(
	[bldgtype_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgrpu_landrpu] ON [bldgrpu] 
(
	[landrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cancelledfaas](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[faasid] [varchar](50) NOT NULL,
	[reason_objid] [varchar](50) NOT NULL,
	[remarks] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_cancelledfaas_faas] ON [cancelledfaas] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_cancelledfaas_reason] ON [cancelledfaas] 
(
	[reason_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [subdivision](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[ry] [int] NOT NULL,
	[txntype_objid] [varchar](5) NOT NULL,
	[txnno] [varchar](10) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[autonumber] [int] NOT NULL,
	[effectivityyear] [int] NOT NULL,
	[effectivityqtr] [int] NOT NULL,
	[memoranda] [varchar](2000) NOT NULL,
	[motherfaasid] [varchar](50) NOT NULL,
	[lguid] [varchar](50) NULL,
	[signatories] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_subdivision_txnno] UNIQUE NONCLUSTERED 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_subdivision_faas] ON [subdivision] 
(
	[motherfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [previousfaas](
	[faasid] [varchar](50) NOT NULL,
	[prevfaasid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[faasid] ASC,
	[prevfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_previousfaas_prevfaas] ON [previousfaas] 
(
	[prevfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [planttreerpu](
	[objid] [varchar](50) NOT NULL,
	[landrpuid] [varchar](50) NOT NULL,
	[productive] [numeric](16, 2) NOT NULL,
	[nonproductive] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_planttreerpu_landrpu] ON [planttreerpu] 
(
	[landrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpt_sales_data](
	[objid] [varchar](50) NOT NULL,
	[seller_name] [varchar](250) NOT NULL,
	[seller_address] [varchar](100) NOT NULL,
	[buyer_name] [varchar](250) NOT NULL,
	[buyer_address] [varchar](100) NOT NULL,
	[saledate] [date] NOT NULL,
	[amount] [numeric](16, 2) NOT NULL,
	[remarks] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_buyername] ON [rpt_sales_data] 
(
	[buyer_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_FK_faas_sales_data] ON [rpt_sales_data] 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_sellername] ON [rpt_sales_data] 
(
	[seller_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [resectionaffectedrpu](
	[objid] [varchar](50) NOT NULL,
	[resectionid] [varchar](50) NOT NULL,
	[rputype] [varchar](10) NOT NULL,
	[prevfaasid] [varchar](50) NOT NULL,
	[prevrpuid] [varchar](50) NOT NULL,
	[prevrpid] [varchar](50) NOT NULL,
	[newsection] [varchar](3) NULL,
	[newparcel] [varchar](3) NULL,
	[newtdno] [varchar](20) NULL,
	[newutdno] [varchar](20) NOT NULL,
	[newpin] [varchar](25) NULL,
	[newsuffix] [int] NULL,
	[newfaasid] [varchar](50) NULL,
	[newrpuid] [varchar](50) NULL,
	[newrpid] [varchar](50) NULL,
	[memoranda] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_reseectionaffectedrpu_newutdno] UNIQUE NONCLUSTERED 
(
	[newutdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptledger](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[faasid] [varchar](50) NOT NULL,
	[nextbilldate] [date] NULL,
	[lastyearpaid] [int] NOT NULL,
	[lastqtrpaid] [int] NOT NULL,
	[firstqtrpaidontime] [int] NOT NULL,
	[qtrlypaymentavailed] [int] NOT NULL,
	[qtrlypaymentpaidontime] [int] NOT NULL,
	[lastitemyear] [int] NULL,
	[lastreceiptid] [varchar](50) NULL,
	[barangayid] [varchar](50) NOT NULL,
	[advancebill] [int] NOT NULL,
	[lastbilledyear] [int] NULL,
	[lastbilledqtr] [int] NULL,
	[partialbasic] [numeric](16, 2) NULL,
	[partialbasicint] [numeric](16, 2) NULL,
	[partialbasicdisc] [numeric](16, 2) NULL,
	[partialsef] [numeric](16, 2) NULL,
	[partialsefint] [numeric](16, 2) NULL,
	[partialsefdisc] [numeric](16, 2) NULL,
	[partialledyear] [int] NULL,
	[partialledqtr] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rptledger_faas] ON [rptledger] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledger_faasid] ON [rptledger] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledger_state] ON [rptledger] 
(
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledger_state_barangay] ON [rptledger] 
(
	[state] ASC,
	[barangayid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledger_state_faasid] ON [rptledger] 
(
	[state] ASC,
	[faasid] ASC
)
INCLUDE ( [objid],
[lastyearpaid],
[lastqtrpaid],
[firstqtrpaidontime],
[qtrlypaymentpaidontime],
[lastitemyear]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledger_state_lastyearpaid] ON [rptledger] 
(
	[state] ASC,
	[lastyearpaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledgerlastyearpaidqtr] ON [rptledger] 
(
	[lastyearpaid] ASC,
	[lastqtrpaid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptcertification](
	[objid] [varchar](50) NOT NULL,
	[txnno] [varchar](25) NOT NULL,
	[txndate] [datetime] NOT NULL,
	[opener] [varchar](50) NOT NULL,
	[faasid] [varchar](50) NULL,
	[taxpayer_objid] [varchar](50) NULL,
	[taxpayer_name] [text] NOT NULL,
	[taxpayer_address] [varchar](150) NULL,
	[requestedby] [text] NOT NULL,
	[requestedbyaddress] [varchar](100) NOT NULL,
	[purpose] [varchar](500) NULL,
	[certifiedby] [varchar](150) NOT NULL,
	[certifiedbytitle] [varchar](50) NOT NULL,
	[byauthority] [varchar](150) NULL,
	[byauthoritytitle] [varchar](50) NULL,
	[official] [int] NOT NULL,
	[orno] [varchar](25) NULL,
	[ordate] [datetime] NULL,
	[oramount] [numeric](16, 2) NOT NULL,
	[stampamount] [numeric](16, 2) NOT NULL,
	[createdbyid] [varchar](50) NULL,
	[createdby] [varchar](150) NOT NULL,
	[createdbytitle] [varchar](50) NOT NULL,
	[office] [varchar](50) NULL,
	[addlinfo] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_rptcertification_txnno] UNIQUE NONCLUSTERED 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rptcertification_faas] ON [rptcertification] 
(
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptcertification_office] ON [rptcertification] 
(
	[office] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptcertification_office_txnno] ON [rptcertification] 
(
	[office] ASC,
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptcertification_taxpayerid] ON [rptcertification] 
(
	[taxpayer_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_condition_var](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[ruleid] [varchar](50) NULL,
	[varname] [varchar](50) NULL,
	[datatype] [varchar](50) NULL,
	[pos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_rule_var] UNIQUE NONCLUSTERED 
(
	[varname] ASC,
	[ruleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_action_param](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[actiondefparam_objid] [varchar](50) NULL,
	[stringvalue] [varchar](255) NULL,
	[booleanvalue] [int] NULL,
	[var_objid] [varchar](50) NULL,
	[var_name] [varchar](50) NULL,
	[expr] [text] NULL,
	[exprtype] [varchar](25) NULL,
	[pos] [int] NULL,
	[obj_key] [varchar](50) NULL,
	[obj_value] [varchar](255) NULL,
	[listvalue] [text] NULL,
	[lov] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [sys_rule_condition_constraint](
	[objid] [varchar](50) NOT NULL,
	[parentid] [varchar](50) NULL,
	[field_objid] [varchar](50) NULL,
	[fieldname] [varchar](50) NULL,
	[varname] [varchar](50) NULL,
	[operator_caption] [varchar](50) NULL,
	[operator_symbol] [varchar](50) NULL,
	[usevar] [int] NULL,
	[var_objid] [varchar](50) NULL,
	[var_name] [varchar](50) NULL,
	[decimalvalue] [decimal](16, 2) NULL,
	[intvalue] [int] NULL,
	[stringvalue] [varchar](255) NULL,
	[listvalue] [text] NULL,
	[datevalue] [date] NULL,
	[pos] [int] NULL,
 CONSTRAINT [PK__sys_rule__530D6FE473B00EE2] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptcertificationitem](
	[objid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rptcertificationid] [varchar](50) NOT NULL,
	[refid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rptcertificationitem_rptcertification] ON [rptcertificationitem] 
(
	[rptcertificationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptcertificationitem_refid] ON [rptcertificationitem] 
(
	[refid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [planttreedetail](
	[objid] [varchar](50) NOT NULL,
	[planttreerpuid] [varchar](50) NULL,
	[landrpuid] [varchar](50) NULL,
	[planttreeunitvalue_objid] [varchar](50) NOT NULL,
	[planttree_objid] [varchar](50) NOT NULL,
	[actualuse_objid] [varchar](50) NOT NULL,
	[productive] [numeric](16, 2) NOT NULL,
	[nonproductive] [numeric](16, 2) NOT NULL,
	[nonproductiveage] [numeric](16, 2) NULL,
	[unitvalue] [numeric](16, 2) NOT NULL,
	[basemarketvalue] [numeric](16, 2) NOT NULL,
	[adjustment] [numeric](16, 2) NOT NULL,
	[adjustmentrate] [numeric](16, 2) NOT NULL,
	[marketvalue] [numeric](16, 2) NOT NULL,
	[assesslevel] [numeric](16, 2) NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_planttreedetail_landrpu] ON [planttreedetail] 
(
	[landrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_planttreedetail_plantreeassesslevel] ON [planttreedetail] 
(
	[actualuse_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_planttreedetail_planttree] ON [planttreedetail] 
(
	[planttree_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_planttreedetail_planttreerpu] ON [planttreedetail] 
(
	[planttreerpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_planttreedetail_planttreeunitvalue] ON [planttreedetail] 
(
	[planttreeunitvalue_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptledgerfaas](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[rptledgerid] [varchar](50) NOT NULL,
	[faasid] [varchar](50) NULL,
	[tdno] [varchar](25) NOT NULL,
	[txntype_objid] [varchar](10) NULL,
	[classification_objid] [varchar](50) NULL,
	[actualuse_objid] [varchar](50) NULL,
	[taxable] [int] NOT NULL,
	[backtax] [int] NOT NULL,
	[fromyear] [int] NOT NULL,
	[fromqtr] [int] NOT NULL,
	[toyear] [int] NOT NULL,
	[toqtr] [int] NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
	[systemcreated] [int] NOT NULL,
	[reclassed] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rptledgerhistory_rptledger] ON [rptledgerfaas] 
(
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledgerfaas_rptledgerid_faasid] ON [rptledgerfaas] 
(
	[rptledgerid] ASC,
	[faasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledgerhistory_ledgerid_toyear] ON [rptledgerfaas] 
(
	[rptledgerid] ASC,
	[toyear] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpttaxincentive_item](
	[objid] [varchar](50) NOT NULL,
	[rpttaxincentiveid] [varchar](50) NOT NULL,
	[rptledgerid] [varchar](50) NOT NULL,
	[fromyear] [int] NOT NULL,
	[toyear] [int] NOT NULL,
	[basicrate] [int] NOT NULL,
	[sefrate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rpttaxincentiveitem_rptledgerid] ON [rpttaxincentive_item] 
(
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rpttaxincentiveitem_rpttaxincentiveid] ON [rpttaxincentive_item] 
(
	[rpttaxincentiveid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rpttaxclearance](
	[objid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[qtr] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [subdividedland](
	[objid] [varchar](50) NOT NULL,
	[subdivisionid] [varchar](50) NOT NULL,
	[itemno] [varchar](5) NOT NULL,
	[newtdno] [varchar](25) NULL,
	[newutdno] [varchar](25) NOT NULL,
	[newpin] [varchar](25) NOT NULL,
	[newtitletype] [varchar](25) NULL,
	[newtitleno] [varchar](25) NULL,
	[newtitledate] [datetime] NULL,
	[areasqm] [numeric](16, 2) NOT NULL,
	[areaha] [numeric](16, 6) NOT NULL,
	[memoranda] [varchar](2000) NOT NULL,
	[administrator_objid] [varchar](50) NULL,
	[administrator_name] [varchar](150) NULL,
	[administrator_address] [varchar](100) NULL,
	[taxpayer_objid] [varchar](50) NULL,
	[taxpayer_name] [varchar](800) NULL,
	[taxpayer_address] [varchar](100) NULL,
	[owner_name] [varchar](800) NULL,
	[owner_address] [varchar](100) NULL,
	[newrpid] [varchar](50) NOT NULL,
	[newrpuid] [varchar](50) NULL,
	[newfaasid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_subdividedland] UNIQUE NONCLUSTERED 
(
	[subdivisionid] ASC,
	[newrpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_subdividedland_newutdno] UNIQUE NONCLUSTERED 
(
	[newutdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_subdividedland_faas] ON [subdividedland] 
(
	[newfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_subdividedland_newrp] ON [subdividedland] 
(
	[newrpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_subdividedland_newrpu] ON [subdividedland] 
(
	[newrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_subdividedland_subdivision] ON [subdividedland] 
(
	[subdivisionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_subdividedland_administrator_name] ON [subdividedland] 
(
	[administrator_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_subdividedland_newpin] ON [subdividedland] 
(
	[newpin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_subdividedland_newtdno] ON [subdividedland] 
(
	[newtdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_subdividedland_taxpayer_name] ON [subdividedland] 
(
	[taxpayer_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cancelannotation](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](15) NOT NULL,
	[txnno] [varchar](10) NULL,
	[txndate] [datetime] NULL,
	[annotationid] [varchar](50) NOT NULL,
	[fileno] [varchar](20) NOT NULL,
	[remarks] [varchar](500) NOT NULL,
	[orno] [varchar](10) NULL,
	[ordate] [datetime] NULL,
	[oramount] [numeric](16, 2) NOT NULL,
	[signedby] [varchar](150) NOT NULL,
	[signedbytitle] [varchar](50) NOT NULL,
	[dtsigned] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_cancelannotation_faasannotation] ON [cancelannotation] 
(
	[annotationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_cancelannotation_fileno] ON [cancelannotation] 
(
	[fileno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_cancelannotation_txnno] ON [cancelannotation] 
(
	[txnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldguse](
	[objid] [varchar](50) NOT NULL,
	[bldgrpuid] [varchar](50) NOT NULL,
	[actualuse_objid] [varchar](50) NOT NULL,
	[basevalue] [numeric](16, 2) NOT NULL,
	[area] [numeric](16, 2) NOT NULL,
	[basemarketvalue] [numeric](16, 2) NOT NULL,
	[depreciationvalue] [numeric](16, 2) NOT NULL,
	[adjustment] [numeric](16, 2) NOT NULL,
	[marketvalue] [numeric](16, 2) NOT NULL,
	[assesslevel] [numeric](16, 2) NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldguse_bldgassesslevel] ON [bldguse] 
(
	[actualuse_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldguse_bldgrpu] ON [bldguse] 
(
	[bldgrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgstructure](
	[objid] [varchar](50) NOT NULL,
	[bldgrpuid] [varchar](50) NOT NULL,
	[structure_objid] [varchar](50) NOT NULL,
	[material_objid] [varchar](50) NULL,
 CONSTRAINT [PK__bldgstructure__3C89F72A] PRIMARY KEY NONCLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [FK_bldgstructure_bldgrpu] ON [bldgstructure] 
(
	[bldgrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgstructure_material] ON [bldgstructure] 
(
	[material_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgstructure_structure] ON [bldgstructure] 
(
	[structure_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [consolidationaffectedrpu](
	[objid] [varchar](50) NOT NULL,
	[consolidationid] [varchar](50) NOT NULL,
	[landfaasid] [varchar](50) NOT NULL,
	[prevfaasid] [varchar](50) NOT NULL,
	[newrpid] [varchar](50) NOT NULL,
	[newrpuid] [varchar](50) NOT NULL,
	[newfaasid] [varchar](50) NULL,
	[newtdno] [varchar](25) NULL,
	[newutdno] [varchar](25) NOT NULL,
	[newsuffix] [int] NOT NULL,
	[memoranda] [varchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_consolidationaffectedrpu_newutdno] UNIQUE NONCLUSTERED 
(
	[newutdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_consolidationaffectedrpu_consolidation] ON [consolidationaffectedrpu] 
(
	[consolidationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_consolidationaffectedrpu_newfaas] ON [consolidationaffectedrpu] 
(
	[newfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_consolidationaffectedrpu_newrpu] ON [consolidationaffectedrpu] 
(
	[newrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_consolidationaffectedrpu_prevfaas] ON [consolidationaffectedrpu] 
(
	[prevfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_consolidationaffectedrpu_landfaasid] ON [consolidationaffectedrpu] 
(
	[landfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_consolidationaffectedrpu_newtdno] ON [consolidationaffectedrpu] 
(
	[newtdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cashreceiptitem_rpt](
	[objid] [varchar](100) NOT NULL,
	[rptreceiptid] [varchar](50) NOT NULL,
	[rptledgerid] [varchar](50) NULL,
	[barangayid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[qtr] [int] NOT NULL,
	[basic] [decimal](12, 2) NOT NULL,
	[basicint] [decimal](12, 2) NOT NULL,
	[basicdisc] [decimal](12, 2) NOT NULL,
	[basiccredit] [decimal](12, 2) NOT NULL,
	[basicamnesty] [decimal](12, 2) NOT NULL,
	[basicintamnesty] [decimal](12, 2) NOT NULL,
	[basicacct_objid] [varchar](50) NULL,
	[basicintacct_objid] [varchar](50) NULL,
	[sef] [decimal](12, 2) NOT NULL,
	[sefint] [decimal](12, 2) NOT NULL,
	[sefdisc] [decimal](12, 2) NOT NULL,
	[sefcredit] [decimal](12, 2) NOT NULL,
	[sefamnesty] [decimal](12, 2) NOT NULL,
	[sefintamnesty] [decimal](12, 2) NOT NULL,
	[sefacct_objid] [varchar](50) NULL,
	[sefintacct_objid] [varchar](50) NULL,
	[firecode] [decimal](12, 2) NOT NULL,
	[firecodeacct_objid] [varchar](50) NULL,
	[revtype] [varchar](15) NOT NULL,
	[partialled] [int] NULL,
	[rptledgerfaasid] [varchar](50) NULL,
	[fromqtr] [int] NULL,
	[toqtr] [int] NULL,
	[lgushare] [numeric](16, 2) NOT NULL,
	[lguintshare] [numeric](16, 2) NOT NULL,
	[brgyshare] [numeric](16, 2) NOT NULL,
	[brgyintshare] [numeric](16, 2) NOT NULL,
	[brgyshareacctid] [varchar](50) NULL,
	[brgyintshareacctid] [varchar](50) NULL,
	[provshare] [decimal](16, 2) NOT NULL,
	[provintshare] [decimal](16, 2) NOT NULL,
	[provshareacctid] [varchar](50) NULL,
	[provintshareacctid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rptreceiptitem_rptledger] ON [cashreceiptitem_rpt] 
(
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_rptreceiptitem_rptreceipt] ON [cashreceiptitem_rpt] 
(
	[rptreceiptid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [consolidatedland](
	[objid] [varchar](50) NOT NULL,
	[consolidationid] [varchar](50) NOT NULL,
	[landfaasid] [varchar](50) NOT NULL,
	[rpuid] [varchar](50) NOT NULL,
	[rpid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_consolidatedland_consolidation] ON [consolidatedland] 
(
	[consolidationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_consolidatedland_faas] ON [consolidatedland] 
(
	[landfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [miscrpuitem_rptparameter](
	[miscrpuitemid] [varchar](50) NOT NULL,
	[param_objid] [varchar](50) NOT NULL,
	[miscrpuid] [varchar](50) NOT NULL,
	[intvalue] [int] NULL,
	[decimalvalue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[miscrpuitemid] ASC,
	[param_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_miscrpuitem_rptparameter_] ON [miscrpuitem_rptparameter] 
(
	[miscrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_miscrpuitem_rptparameter_rptparamer] ON [miscrpuitem_rptparameter] 
(
	[param_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [mcsettlement_otherclaim](
	[objid] [varchar](50) NOT NULL,
	[mcsettlementid] [varchar](50) NOT NULL,
	[faas_objid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_mcotherclaim_faas_objid] UNIQUE NONCLUSTERED 
(
	[faas_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_mcotherclaim_faas_objid] ON [mcsettlement_otherclaim] 
(
	[faas_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_mcotherclaim_mcid] ON [mcsettlement_otherclaim] 
(
	[mcsettlementid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [mcsettlement_affectedrpu](
	[objid] [varchar](50) NOT NULL,
	[mcsettlementid] [varchar](50) NOT NULL,
	[rputype] [varchar](15) NOT NULL,
	[prevfaas_objid] [varchar](50) NOT NULL,
	[newfaas_objid] [varchar](50) NULL,
	[newtdno] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_mcaffectedrpu_prevfaas_objid] UNIQUE NONCLUSTERED 
(
	[prevfaas_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_mcaffectedrpu_mcid] ON [mcsettlement_affectedrpu] 
(
	[mcsettlementid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_mcaffectedrpu_newfaas_objid] ON [mcsettlement_affectedrpu] 
(
	[newfaas_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_mcaffectedrpu_prevfaas_objid] ON [mcsettlement_affectedrpu] 
(
	[prevfaas_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machuse](
	[objid] [varchar](50) NOT NULL,
	[machrpuid] [varchar](50) NOT NULL,
	[actualuse_objid] [varchar](50) NOT NULL,
	[basemarketvalue] [numeric](16, 2) NOT NULL,
	[marketvalue] [numeric](16, 2) NOT NULL,
	[assesslevel] [numeric](16, 2) NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_machuse_machassesslevel] ON [machuse] 
(
	[actualuse_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_machuse_machrpu] ON [machuse] 
(
	[machrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landadjustment](
	[objid] [varchar](50) NOT NULL,
	[landrpuid] [varchar](50) NULL,
	[landdetailid] [varchar](50) NULL,
	[adjustmenttype_objid] [varchar](50) NOT NULL,
	[expr] [varchar](250) NOT NULL,
	[adjustment] [numeric](16, 2) NOT NULL,
	[type] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_landadjustment_landadjustmenttype] ON [landadjustment] 
(
	[adjustmenttype_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landadjustment_landdetail] ON [landadjustment] 
(
	[landdetailid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landadjustment_landrpu] ON [landadjustment] 
(
	[landrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [machdetail](
	[objid] [varchar](50) NOT NULL,
	[machuseid] [varchar](50) NOT NULL,
	[machrpuid] [varchar](50) NOT NULL,
	[machine_objid] [varchar](50) NOT NULL,
	[operationyear] [int] NULL,
	[replacementcost] [numeric](16, 2) NOT NULL,
	[depreciation] [numeric](16, 2) NOT NULL,
	[depreciationvalue] [numeric](16, 2) NOT NULL,
	[basemarketvalue] [numeric](16, 2) NOT NULL,
	[marketvalue] [numeric](16, 2) NOT NULL,
	[assesslevel] [numeric](16, 2) NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
	[brand] [varchar](50) NULL,
	[capacity] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[serialno] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[yearacquired] [int] NULL,
	[estimatedlife] [int] NULL,
	[remaininglife] [int] NULL,
	[yearinstalled] [int] NULL,
	[yearsused] [int] NULL,
	[originalcost] [numeric](16, 2) NOT NULL,
	[freightcost] [numeric](16, 2) NOT NULL,
	[insurancecost] [numeric](16, 2) NOT NULL,
	[installationcost] [numeric](16, 2) NOT NULL,
	[brokeragecost] [numeric](16, 2) NOT NULL,
	[arrastrecost] [numeric](16, 2) NOT NULL,
	[othercost] [numeric](16, 2) NOT NULL,
	[acquisitioncost] [numeric](16, 2) NOT NULL,
	[feracid] [varchar](50) NULL,
	[ferac] [numeric](16, 2) NULL,
	[forexid] [varchar](50) NULL,
	[forex] [numeric](16, 4) NULL,
	[residualrate] [numeric](16, 2) NOT NULL,
	[conversionfactor] [numeric](16, 2) NOT NULL,
	[swornamount] [numeric](16, 2) NOT NULL,
	[useswornamount] [int] NOT NULL,
	[imported] [int] NOT NULL,
	[newlyinstalled] [int] NOT NULL,
	[autodepreciate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_machdetail_machforex] ON [machdetail] 
(
	[feracid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_machdetail_machforexid] ON [machdetail] 
(
	[forexid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_machdetail_machine] ON [machdetail] 
(
	[machine_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_machdetail_machrpu] ON [machdetail] 
(
	[machrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_machdetail_machuse] ON [machdetail] 
(
	[machuseid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [landadjustmentparameter](
	[objid] [varchar](50) NOT NULL,
	[landadjustmentid] [varchar](50) NOT NULL,
	[landrpuid] [varchar](50) NOT NULL,
	[parameter_objid] [varchar](50) NOT NULL,
	[value] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_landadjustmentparameter_landadjustment] ON [landadjustmentparameter] 
(
	[landadjustmentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landadjustmentparameter_landrpu] ON [landadjustmentparameter] 
(
	[landrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_landadjustmentparameter_rptparameter] ON [landadjustmentparameter] 
(
	[parameter_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [cashreceiptitem_rpt_noledger](
	[objid] [varchar](100) NOT NULL,
	[tdno] [varchar](25) NOT NULL,
	[pin] [varchar](25) NOT NULL,
	[rputype] [varchar](15) NOT NULL,
	[cadastrallotno] [varchar](200) NULL,
	[txntype_objid] [varchar](5) NULL,
	[classification_objid] [varchar](50) NOT NULL,
	[actualuse_objid] [varchar](50) NOT NULL,
	[barangay_objid] [varchar](50) NOT NULL,
	[av] [numeric](16, 2) NOT NULL,
	[originalav] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgfloor](
	[objid] [varchar](50) NOT NULL,
	[bldguseid] [varchar](50) NOT NULL,
	[bldgrpuid] [varchar](50) NOT NULL,
	[floorno] [varchar](5) NOT NULL,
	[area] [numeric](16, 2) NOT NULL,
	[storeyrate] [numeric](16, 2) NOT NULL,
	[basevalue] [numeric](16, 2) NOT NULL,
	[unitvalue] [numeric](16, 2) NOT NULL,
	[basemarketvalue] [numeric](16, 2) NOT NULL,
	[adjustment] [numeric](16, 2) NOT NULL,
	[marketvalue] [numeric](16, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgfloor_bldgrpu] ON [bldgfloor] 
(
	[bldgrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgfloor_bldguse] ON [bldgfloor] 
(
	[bldguseid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [subdivisionaffectedrpu](
	[objid] [varchar](50) NOT NULL,
	[subdivisionid] [varchar](50) NOT NULL,
	[itemno] [varchar](5) NULL,
	[subdividedlandid] [varchar](50) NULL,
	[prevfaasid] [varchar](50) NOT NULL,
	[newfaasid] [varchar](50) NULL,
	[newtdno] [varchar](25) NULL,
	[newutdno] [varchar](25) NOT NULL,
	[newsuffix] [int] NOT NULL,
	[newpin] [varchar](25) NULL,
	[newrpuid] [varchar](50) NULL,
	[newrpid] [varchar](50) NULL,
	[memoranda] [varchar](2000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_subdivisionaffectedrpu_newutdno] UNIQUE NONCLUSTERED 
(
	[newutdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_subdivisionaffectedpru_newfaas] ON [subdivisionaffectedrpu] 
(
	[newfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_subdivisionaffectedpru_newrpu] ON [subdivisionaffectedrpu] 
(
	[newrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_subdivisionaffectedpru_prevfaas] ON [subdivisionaffectedrpu] 
(
	[prevfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_subdivisionaffectedpru_subdividedland] ON [subdivisionaffectedrpu] 
(
	[subdividedlandid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_subdivisionaffectedpru_subdivision] ON [subdivisionaffectedrpu] 
(
	[subdivisionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_subdivisionaffectedrpu_newtdno] ON [subdivisionaffectedrpu] 
(
	[newtdno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptledgeritem](
	[objid] [varchar](50) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[rptledgerid] [varchar](50) NOT NULL,
	[rptledgerfaasid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[assessedvalue] [decimal](16, 2) NOT NULL,
	[basic] [decimal](16, 2) NOT NULL,
	[basicpaid] [decimal](16, 2) NOT NULL,
	[basicint] [decimal](16, 2) NOT NULL,
	[basicintpaid] [decimal](16, 2) NOT NULL,
	[basicdisc] [decimal](16, 2) NOT NULL,
	[basicdisctaken] [decimal](16, 2) NOT NULL,
	[basiccredit] [decimal](16, 2) NOT NULL,
	[basicintpartial] [decimal](16, 2) NOT NULL,
	[basicamnesty] [decimal](16, 2) NOT NULL,
	[basicintamnesty] [decimal](16, 2) NOT NULL,
	[sef] [decimal](16, 2) NOT NULL,
	[sefpaid] [decimal](16, 2) NOT NULL,
	[sefint] [decimal](16, 2) NOT NULL,
	[sefintpaid] [decimal](16, 2) NOT NULL,
	[sefdisc] [decimal](16, 2) NOT NULL,
	[sefdisctaken] [decimal](16, 2) NOT NULL,
	[sefcredit] [decimal](16, 2) NOT NULL,
	[sefintpartial] [decimal](16, 2) NOT NULL,
	[sefamnesty] [decimal](16, 2) NOT NULL,
	[sefintamnesty] [decimal](16, 2) NOT NULL,
	[firecode] [decimal](16, 2) NOT NULL,
	[firecodepaid] [decimal](16, 2) NOT NULL,
	[basicacct_objid] [varchar](50) NULL,
	[basicintacct_objid] [varchar](50) NULL,
	[sefacct_objid] [varchar](50) NULL,
	[sefintacct_objid] [varchar](50) NULL,
	[firecodeacct_objid] [varchar](50) NULL,
	[revtype] [varchar](15) NULL,
	[forpayment] [int] NOT NULL,
	[qtrly] [int] NOT NULL,
	[lastqtrpaid] [int] NOT NULL,
	[amnestyinfo] [varchar](50) NULL,
	[partial] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_rptledger_faas_yrqtr] UNIQUE NONCLUSTERED 
(
	[rptledgerid] ASC,
	[rptledgerfaasid] ASC,
	[year] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rptledgeritem_rptledger] ON [rptledgeritem] 
(
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_rptledgeritem_rptledgerfaas] ON [rptledgeritem] 
(
	[rptledgerfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledgeritem_ledgerstate] ON [rptledgeritem] 
(
	[rptledgerid] ASC,
	[state] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptledgerbillitem](
	[objid] [varchar](75) NOT NULL,
	[rptledgerid] [varchar](50) NOT NULL,
	[rptledgerfaasid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[qtr] [int] NOT NULL,
	[fromqtr] [int] NOT NULL,
	[toqtr] [int] NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
	[qtrlyav] [numeric](16, 2) NOT NULL,
	[basic] [numeric](16, 2) NOT NULL,
	[basicpaid] [numeric](16, 2) NOT NULL,
	[basicint] [numeric](16, 2) NOT NULL,
	[basicintpaid] [numeric](16, 2) NOT NULL,
	[basicintpartial] [decimal](10, 2) NOT NULL,
	[basicdisc] [numeric](16, 2) NOT NULL,
	[basicdisctaken] [numeric](16, 2) NOT NULL,
	[basicamnesty] [numeric](16, 2) NOT NULL,
	[basicintamnesty] [numeric](16, 2) NOT NULL,
	[basiccredit] [numeric](16, 2) NOT NULL,
	[sef] [numeric](16, 2) NOT NULL,
	[sefpaid] [numeric](16, 2) NOT NULL,
	[sefint] [numeric](16, 2) NOT NULL,
	[sefintpaid] [numeric](16, 2) NOT NULL,
	[sefintpartial] [decimal](10, 2) NOT NULL,
	[sefdisc] [numeric](16, 2) NOT NULL,
	[sefdisctaken] [numeric](16, 2) NOT NULL,
	[sefamnesty] [numeric](16, 2) NOT NULL,
	[sefintamnesty] [numeric](16, 2) NOT NULL,
	[sefcredit] [numeric](16, 2) NOT NULL,
	[firecode] [decimal](10, 2) NULL,
	[firecodepaid] [decimal](10, 2) NULL,
	[revtype] [varchar](15) NULL,
	[amnestyinfo] [varchar](50) NULL,
	[forpayment] [int] NOT NULL,
	[partial] [int] NULL,
	[partialapplied] [int] NULL,
	[partialbasic] [decimal](10, 2) NULL,
	[partialbasicint] [decimal](10, 2) NULL,
	[partialbasicdisc] [decimal](10, 2) NULL,
	[partialsef] [decimal](10, 2) NULL,
	[partialsefint] [decimal](10, 2) NULL,
	[partialsefdisc] [decimal](10, 2) NULL,
	[basicacctid] [varchar](50) NULL,
	[basicintacctid] [varchar](50) NULL,
	[sefacctid] [varchar](50) NULL,
	[sefintacctid] [varchar](50) NULL,
	[firecodeacctid] [varchar](50) NULL,
	[lgushare] [numeric](16, 2) NOT NULL,
	[lguintshare] [numeric](16, 2) NOT NULL,
	[brgyshare] [numeric](16, 2) NOT NULL,
	[brgyintshare] [numeric](16, 2) NOT NULL,
	[brgyshareacctid] [varchar](50) NULL,
	[brgyintshareacctid] [varchar](50) NULL,
	[provshare] [numeric](16, 2) NOT NULL,
	[provintshare] [numeric](16, 2) NOT NULL,
	[provshareacctid] [varchar](50) NULL,
	[provintshareacctid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ux_rptledgerbillitem_ledgeridyearqtr] UNIQUE NONCLUSTERED 
(
	[rptledgerid] ASC,
	[year] ASC,
	[qtr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ix_rptledgerbillitem_rptledgerfaasid] ON [rptledgerbillitem] 
(
	[rptledgerfaasid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ix_rptledgerbillitem_rptledgerid] ON [rptledgerbillitem] 
(
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [rptledgeritem_qtrly](
	[objid] [varchar](75) NOT NULL,
	[state] [varchar](25) NOT NULL,
	[rptledgerid] [varchar](50) NOT NULL,
	[rptledgeritemid] [varchar](50) NOT NULL,
	[year] [int] NOT NULL,
	[qtr] [int] NOT NULL,
	[assessedvalue] [numeric](16, 2) NOT NULL,
	[qtrlyav] [numeric](16, 2) NOT NULL,
	[basic] [numeric](16, 2) NOT NULL,
	[basicpaid] [numeric](16, 2) NOT NULL,
	[basicint] [numeric](16, 2) NOT NULL,
	[basicintpaid] [numeric](16, 2) NOT NULL,
	[basicintpartial] [decimal](10, 2) NOT NULL,
	[basicdisc] [numeric](16, 2) NOT NULL,
	[basicdisctaken] [numeric](16, 2) NOT NULL,
	[basicamnesty] [numeric](16, 2) NOT NULL,
	[basicintamnesty] [numeric](16, 2) NOT NULL,
	[basiccredit] [numeric](16, 2) NOT NULL,
	[sef] [numeric](16, 2) NOT NULL,
	[sefpaid] [numeric](16, 2) NOT NULL,
	[sefint] [numeric](16, 2) NOT NULL,
	[sefintpaid] [numeric](16, 2) NOT NULL,
	[sefintpartial] [decimal](10, 2) NOT NULL,
	[sefdisc] [numeric](16, 2) NOT NULL,
	[sefdisctaken] [numeric](16, 2) NOT NULL,
	[sefamnesty] [numeric](16, 2) NOT NULL,
	[sefintamnesty] [numeric](16, 2) NOT NULL,
	[sefcredit] [numeric](16, 2) NOT NULL,
	[firecode] [decimal](10, 2) NULL,
	[firecodepaid] [decimal](10, 2) NULL,
	[revtype] [varchar](15) NULL,
	[amnestyinfo] [varchar](50) NULL,
	[forpayment] [int] NOT NULL,
	[partial] [int] NULL,
	[partialbasic] [decimal](10, 2) NULL,
	[partialbasicint] [decimal](10, 2) NULL,
	[partialbasicdisc] [decimal](10, 2) NULL,
	[partialsef] [decimal](10, 2) NULL,
	[partialsefint] [decimal](10, 2) NULL,
	[partialsefdisc] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_rptledgeritem_rptledger] ON [rptledgeritem_qtrly] 
(
	[rptledgerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_rptledgeritem_rptledgeritem] ON [rptledgeritem_qtrly] 
(
	[rptledgeritemid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgflooradditional](
	[objid] [varchar](50) NOT NULL,
	[bldgfloorid] [varchar](50) NOT NULL,
	[bldgrpuid] [varchar](50) NOT NULL,
	[additionalitem_objid] [varchar](50) NOT NULL,
	[amount] [numeric](16, 2) NOT NULL,
	[expr] [varchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgflooradditional_additionalitem] ON [bldgflooradditional] 
(
	[additionalitem_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgflooradditional_bldgfloor] ON [bldgflooradditional] 
(
	[bldgfloorid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgflooradditional_bldgrpu] ON [bldgflooradditional] 
(
	[bldgrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [bldgflooradditionalparam](
	[objid] [varchar](50) NOT NULL,
	[bldgflooradditionalid] [varchar](50) NOT NULL,
	[bldgrpuid] [varchar](50) NOT NULL,
	[param_objid] [varchar](50) NOT NULL,
	[intvalue] [int] NULL,
	[decimalvalue] [numeric](16, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [FK_bldgflooradditionalparam_bldgflooradditional] ON [bldgflooradditionalparam] 
(
	[bldgflooradditionalid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgflooradditionalparam_bldgrpu] ON [bldgflooradditionalparam] 
(
	[bldgrpuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FK_bldgflooradditionalparam_param] ON [bldgflooradditionalparam] 
(
	[param_objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [ap] ADD  DEFAULT (NULL) FOR [subacctid]
GO
ALTER TABLE [ap] ADD  DEFAULT (NULL) FOR [subacctclass]
GO
ALTER TABLE [ap] ADD  DEFAULT (NULL) FOR [subaccttitle]
GO
ALTER TABLE [ap] ADD  DEFAULT (NULL) FOR [sltype]
GO
ALTER TABLE [ap] ADD  DEFAULT (NULL) FOR [totaldr]
GO
ALTER TABLE [ap] ADD  DEFAULT (NULL) FOR [totalcr]
GO
ALTER TABLE [ap] ADD  DEFAULT (NULL) FOR [balance]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [txndate]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [txnrefid]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [txnrefno]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [txnreftype]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [particulars]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [dr]
GO
ALTER TABLE [ap_detail] ADD  DEFAULT (NULL) FOR [cr]
GO
ALTER TABLE [ar] ADD  DEFAULT (NULL) FOR [subacctid]
GO
ALTER TABLE [ar] ADD  DEFAULT (NULL) FOR [subacctclass]
GO
ALTER TABLE [ar] ADD  DEFAULT (NULL) FOR [subaccttitle]
GO
ALTER TABLE [ar] ADD  DEFAULT (NULL) FOR [sltype]
GO
ALTER TABLE [ar] ADD  DEFAULT (NULL) FOR [totaldr]
GO
ALTER TABLE [ar] ADD  DEFAULT (NULL) FOR [totalcr]
GO
ALTER TABLE [ar] ADD  DEFAULT (NULL) FOR [balance]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [txndate]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [txnrefid]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [txnrefno]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [txnreftype]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [particulars]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [dr]
GO
ALTER TABLE [ar_detail] ADD  DEFAULT (NULL) FOR [cr]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [txnno]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [txndate]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [createdbyid]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [approvedbyid]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [approvedbyname]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [approvedbytitle]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [dtdelivered]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [receivedby]
GO
ALTER TABLE [assessmentnotice] ADD  DEFAULT (NULL) FOR [remarks]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [indexno]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [pin]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [captain_name]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [captain_title]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [captain_office]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [treasurer_name]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [treasurer_title]
GO
ALTER TABLE [barangay] ADD  DEFAULT (NULL) FOR [treasurer_office]
GO
ALTER TABLE [batchcapture_collection] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [batchcapture_collection_entry] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [batchcapture_collection_entry] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [item_objid]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [item_code]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [item_title]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [fund_objid]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [fund_code]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [fund_title]
GO
ALTER TABLE [batchcapture_collection_entry_item] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [bldgadditionalitem] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [bldgassesslevel] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [bldgflooradditionalparam] ADD  DEFAULT (NULL) FOR [intvalue]
GO
ALTER TABLE [bldgflooradditionalparam] ADD  DEFAULT (NULL) FOR [decimalvalue]
GO
ALTER TABLE [bldgkindbucc] ADD  DEFAULT (NULL) FOR [bldgclass]
GO
ALTER TABLE [bldgkindbucc] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [houseno]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [psic]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [permitno]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [permitdate]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [permitissuedby]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [dtcompleted]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [dtoccupied]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [additionalinfo]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [bldgassesslevel_objid]
GO
ALTER TABLE [bldgrpu] ADD  DEFAULT (NULL) FOR [bldgclass]
GO
ALTER TABLE [bldgrysetting] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [bldgtype] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [bldgtype_storeyadjustment] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [brgyshare] ADD  DEFAULT (NULL) FOR [txndate]
GO
ALTER TABLE [brgyshare] ADD  DEFAULT (NULL) FOR [year]
GO
ALTER TABLE [brgyshare] ADD  DEFAULT (NULL) FOR [month]
GO
ALTER TABLE [brgyshare] ADD  DEFAULT (NULL) FOR [createdbyid]
GO
ALTER TABLE [brgyshare] ADD  DEFAULT (NULL) FOR [postedbyid]
GO
ALTER TABLE [brgyshare] ADD  DEFAULT (NULL) FOR [postedby]
GO
ALTER TABLE [brgyshare] ADD  DEFAULT (NULL) FOR [postedbytitle]
GO
ALTER TABLE [cancelannotation] ADD  DEFAULT (NULL) FOR [txnno]
GO
ALTER TABLE [cancelannotation] ADD  DEFAULT (NULL) FOR [txndate]
GO
ALTER TABLE [cancelannotation] ADD  DEFAULT (NULL) FOR [orno]
GO
ALTER TABLE [cancelannotation] ADD  DEFAULT (NULL) FOR [ordate]
GO
ALTER TABLE [cancelannotation] ADD  DEFAULT (NULL) FOR [dtsigned]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [tocitymuni]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [toprovince]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [permissiontype]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [nationality]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [age]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [sex]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [dtdeath]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [deathcause]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [cemetery]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [infectious]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [embalmed]
GO
ALTER TABLE [cashreceipt_burial] ADD  DEFAULT (NULL) FOR [disposition]
GO
ALTER TABLE [cashreceipt_cashticket] ADD  DEFAULT (NULL) FOR [qtyissued]
GO
ALTER TABLE [cashreceipt_largecattleownership] ADD  DEFAULT (NULL) FOR [ownerof]
GO
ALTER TABLE [cashreceipt_largecattleownership] ADD  DEFAULT (NULL) FOR [sex]
GO
ALTER TABLE [cashreceipt_largecattleownership] ADD  DEFAULT (NULL) FOR [age]
GO
ALTER TABLE [cashreceipt_largecattleownership] ADD  DEFAULT (NULL) FOR [municipalitybrand]
GO
ALTER TABLE [cashreceipt_largecattleownership] ADD  DEFAULT (NULL) FOR [ownerbrand]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [groomname]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [groomaddress]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [groomageyear]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [groomagemonth]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [bridename]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [brideaddress]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [brideageyear]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [brideagemonth]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [registerno]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [attachments]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [lcrofficer]
GO
ALTER TABLE [cashreceipt_marriage] ADD  DEFAULT (NULL) FOR [lcrofficertitle]
GO
ALTER TABLE [cashreceipt_rpt] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [acctid]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [acctno]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [acctitle]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [permitamount]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [slaughterof]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [weight]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [ordinanceno]
GO
ALTER TABLE [cashreceipt_slaughter] ADD  DEFAULT (NULL) FOR [ordinancedate]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT (NULL) FOR [rptledgerid]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT (NULL) FOR [firecodeacct_objid]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT ((0)) FOR [lgushare]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT ((0)) FOR [lguintshare]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT ((0)) FOR [brgyshare]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT ((0)) FOR [brgyintshare]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT ((0)) FOR [provshare]
GO
ALTER TABLE [cashreceiptitem_rpt] ADD  DEFAULT ((0)) FOR [provintshare]
GO
ALTER TABLE [cashticket_control] ADD  DEFAULT ('') FOR [controlid]
GO
ALTER TABLE [cashticket_control] ADD  DEFAULT ('') FOR [assignee_objid]
GO
ALTER TABLE [cashticket_control] ADD  DEFAULT (NULL) FOR [assignee_name]
GO
ALTER TABLE [cashticket_control] ADD  DEFAULT (NULL) FOR [qtyin]
GO
ALTER TABLE [cashticket_control] ADD  DEFAULT (NULL) FOR [qtyissued]
GO
ALTER TABLE [cashticket_control] ADD  DEFAULT (NULL) FOR [qtybalance]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [afid]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [respcenter_objid]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [respcenter_name]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [respcenter_type]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [startstub]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [endstub]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [currentstub]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [qtyin]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [qtyout]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [qtycancelled]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [qtybalance]
GO
ALTER TABLE [cashticket_inventory] ADD  DEFAULT (NULL) FOR [currentlineno]
GO
ALTER TABLE [cashticket_inventory_detail] ADD  DEFAULT (NULL) FOR [qtycancelled]
GO
ALTER TABLE [cashticket_inventory_detail] ADD  DEFAULT (NULL) FOR [remarks]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [refid]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [byauthority]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [byauthoritytitle]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [orno]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [ordate]
GO
ALTER TABLE [certification] ADD  DEFAULT (NULL) FOR [createdbyid]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [indexno]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [pin]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [mayor_name]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [mayor_title]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [mayor_office]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [assessor_name]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [assessor_title]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [assessor_office]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [treasurer_name]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [treasurer_title]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [treasurer_office]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [city] ADD  DEFAULT (NULL) FOR [fullname]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [txnno]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [txndate]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [newtitletype]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [newtitleno]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [newtitledate]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [newfaasid]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [administrator_objid]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [administrator_name]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [administrator_address]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [administratorid]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [administratorname]
GO
ALTER TABLE [consolidation] ADD  DEFAULT (NULL) FOR [administratoraddress]
GO
ALTER TABLE [district] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [district] ADD  DEFAULT (NULL) FOR [indexno]
GO
ALTER TABLE [district] ADD  DEFAULT (NULL) FOR [pin]
GO
ALTER TABLE [district] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [district] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [district] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [entity] ADD  DEFAULT (NULL) FOR [mailingaddress]
GO
ALTER TABLE [entity] ADD  DEFAULT (NULL) FOR [remarks]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [middlename]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [birthdate]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [birthplace]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [citizenship]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [gender]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [civilstatus]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [profession]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [tin]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [sss]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [height]
GO
ALTER TABLE [entityindividual] ADD  DEFAULT (NULL) FOR [weight]
GO
ALTER TABLE [entityjuridical] ADD  DEFAULT (NULL) FOR [tin]
GO
ALTER TABLE [entityjuridical] ADD  DEFAULT (NULL) FOR [dtregistered]
GO
ALTER TABLE [entityjuridical] ADD  DEFAULT (NULL) FOR [orgtype]
GO
ALTER TABLE [entityjuridical] ADD  DEFAULT (NULL) FOR [nature]
GO
ALTER TABLE [entitymember] ADD  DEFAULT (NULL) FOR [prefix]
GO
ALTER TABLE [entitymember] ADD  DEFAULT (NULL) FOR [suffix]
GO
ALTER TABLE [entitymember] ADD  DEFAULT (NULL) FOR [remarks]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [titletype]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [titleno]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [titledate]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [administrator_objid]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [administrator_name]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [administrator_address]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [beneficiary_objid]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [beneficiary_address]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [memoranda]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [cancelnote]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [restrictionid]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [prevtdno]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [prevpin]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [cancelreason]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [canceldate]
GO
ALTER TABLE [faas] ADD  DEFAULT (NULL) FOR [cancelledbytdnos]
GO
ALTER TABLE [faasannotation] ADD  DEFAULT (NULL) FOR [txnno]
GO
ALTER TABLE [faasannotation] ADD  DEFAULT (NULL) FOR [txndate]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevtitletype]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevtitleno]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevtitledate]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevadministratorid]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevadministratorname]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevadministratoraddress]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevrestrictionid]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevsurveyno]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevblockno]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevpurok]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [prevstreet]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [faas_titletype]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [faas_titleno]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [faas_titledate]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [faas_restrictionid]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [rp_surveyno]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [rp_blockno]
GO
ALTER TABLE [faasupdate] ADD  DEFAULT (NULL) FOR [rp_street]
GO
ALTER TABLE [fund] ADD  DEFAULT ((0)) FOR [special]
GO
ALTER TABLE [landadjustment] ADD  DEFAULT (NULL) FOR [landrpuid]
GO
ALTER TABLE [landadjustment] ADD  DEFAULT (NULL) FOR [landdetailid]
GO
ALTER TABLE [landadjustmenttype] ADD  DEFAULT (NULL) FOR [appliedto]
GO
ALTER TABLE [landassesslevel] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [landdetail] ADD  DEFAULT (NULL) FOR [stripping_objid]
GO
ALTER TABLE [landdetail] ADD  DEFAULT (NULL) FOR [addlinfo]
GO
ALTER TABLE [landrysetting] ADD  DEFAULT (NULL) FOR [appliedto]
GO
ALTER TABLE [landrysetting] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [lcuvspecificclass] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [lcuvstripping] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [lcuvsubclass] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [machassesslevel] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [operationyear]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [brand]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [capacity]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [model]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [serialno]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [yearacquired]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [estimatedlife]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [remaininglife]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [yearinstalled]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [yearsused]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [feracid]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [ferac]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [forexid]
GO
ALTER TABLE [machdetail] ADD  DEFAULT (NULL) FOR [forex]
GO
ALTER TABLE [machforex] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [machrysetting] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [miscassesslevel] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [miscitemvalue] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [miscrpuitem_rptparameter] ADD  DEFAULT (NULL) FOR [intvalue]
GO
ALTER TABLE [miscrysetting] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [indexno]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [pin]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [mayor_name]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [mayor_title]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [mayor_office]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [assessor_name]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [assessor_title]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [assessor_office]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [treasurer_name]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [treasurer_title]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [treasurer_office]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [municipality] ADD  DEFAULT (NULL) FOR [fullname]
GO
ALTER TABLE [planttreeassesslevel] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [planttreedetail] ADD  DEFAULT (NULL) FOR [planttreerpuid]
GO
ALTER TABLE [planttreedetail] ADD  DEFAULT (NULL) FOR [landrpuid]
GO
ALTER TABLE [planttreedetail] ADD  DEFAULT (NULL) FOR [nonproductiveage]
GO
ALTER TABLE [planttreerysetting] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [planttreeunitvalue] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [indexno]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [pin]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [governor_name]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [governor_title]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [governor_office]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [assessor_name]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [assessor_title]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [assessor_office]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [treasurer_name]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [treasurer_title]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [treasurer_office]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [province] ADD  DEFAULT (NULL) FOR [fullname]
GO
ALTER TABLE [realproperty] ADD  DEFAULT (NULL) FOR [blockno]
GO
ALTER TABLE [realproperty] ADD  DEFAULT (NULL) FOR [surveyno]
GO
ALTER TABLE [realproperty] ADD  DEFAULT (NULL) FOR [street]
GO
ALTER TABLE [realproperty] ADD  DEFAULT (NULL) FOR [purok]
GO
ALTER TABLE [realproperty] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newsection]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newparcel]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newtdno]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newpin]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newsuffix]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newfaasid]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newrpuid]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newrpid]
GO
ALTER TABLE [resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [memoranda]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [faasid]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [taxpayer_objid]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [taxpayer_address]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [byauthority]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [byauthoritytitle]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [orno]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [ordate]
GO
ALTER TABLE [rptcertification] ADD  DEFAULT (NULL) FOR [createdbyid]
GO
ALTER TABLE [rptexpiry] ADD  DEFAULT (NULL) FOR [expirydate]
GO
ALTER TABLE [rptledger] ADD  DEFAULT (NULL) FOR [lastreceiptid]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0)) FOR [advancebill]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0)) FOR [lastbilledyear]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0)) FOR [lastbilledqtr]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0.0)) FOR [partialbasic]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0.0)) FOR [partialbasicint]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0.0)) FOR [partialbasicdisc]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0.0)) FOR [partialsef]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0.0)) FOR [partialsefint]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0.0)) FOR [partialsefdisc]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0)) FOR [partialledyear]
GO
ALTER TABLE [rptledger] ADD  DEFAULT ((0)) FOR [partialledqtr]
GO
ALTER TABLE [rptledgerbill] ADD  DEFAULT (NULL) FOR [revenueitemid]
GO
ALTER TABLE [rptledgerbill] ADD  DEFAULT (NULL) FOR [refid]
GO
ALTER TABLE [rptledgerbillitem] ADD  DEFAULT ((0)) FOR [lgushare]
GO
ALTER TABLE [rptledgerbillitem] ADD  DEFAULT ((0)) FOR [lguintshare]
GO
ALTER TABLE [rptledgerbillitem] ADD  DEFAULT ((0)) FOR [brgyshare]
GO
ALTER TABLE [rptledgerbillitem] ADD  DEFAULT ((0)) FOR [brgyintshare]
GO
ALTER TABLE [rptledgerbillitem] ADD  DEFAULT ((0)) FOR [provshare]
GO
ALTER TABLE [rptledgerbillitem] ADD  DEFAULT ((0)) FOR [provintshare]
GO
ALTER TABLE [rptledgerfaas] ADD  DEFAULT (NULL) FOR [faasid]
GO
ALTER TABLE [rptledgeritem] ADD  DEFAULT (NULL) FOR [firecodeacct_objid]
GO
ALTER TABLE [rptledgeritem] ADD  DEFAULT (NULL) FOR [amnestyinfo]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [firecode]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [firecodepaid]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [amnestyinfo]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [partial]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [partialbasic]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [partialbasicint]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [partialbasicdisc]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [partialsef]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [partialsefint]
GO
ALTER TABLE [rptledgeritem_qtrly] ADD  DEFAULT (NULL) FOR [partialsefdisc]
GO
ALTER TABLE [rptparameter] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [rpu] ADD  DEFAULT (NULL) FOR [subsuffix]
GO
ALTER TABLE [rpu] ADD  DEFAULT (NULL) FOR [previd]
GO
ALTER TABLE [rpu] ADD  DEFAULT (NULL) FOR [rpumasterid]
GO
ALTER TABLE [signatory] ADD  DEFAULT (NULL) FOR [middlename]
GO
ALTER TABLE [signatory] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [signatory] ADD  DEFAULT (NULL) FOR [department]
GO
ALTER TABLE [specialaccountsetting] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [specialaccountsetting] ADD  DEFAULT ('') FOR [item_objid]
GO
ALTER TABLE [subdividedland] ADD  DEFAULT (NULL) FOR [newtitletype]
GO
ALTER TABLE [subdividedland] ADD  DEFAULT (NULL) FOR [newtitleno]
GO
ALTER TABLE [subdividedland] ADD  DEFAULT (NULL) FOR [newtitledate]
GO
ALTER TABLE [subdividedland] ADD  DEFAULT (NULL) FOR [administrator_objid]
GO
ALTER TABLE [subdividedland] ADD  DEFAULT (NULL) FOR [administrator_name]
GO
ALTER TABLE [subdividedland] ADD  DEFAULT (NULL) FOR [administrator_address]
GO
ALTER TABLE [subdivisionaffectedrpu] ADD  DEFAULT (NULL) FOR [newrpid]
GO
ALTER TABLE [sys_dataset] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_dataset] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_dataset] ADD  DEFAULT (NULL) FOR [statement]
GO
ALTER TABLE [sys_dataset] ADD  DEFAULT (NULL) FOR [datasource]
GO
ALTER TABLE [sys_dataset] ADD  DEFAULT (NULL) FOR [servicename]
GO
ALTER TABLE [sys_org] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_org] ADD  DEFAULT (NULL) FOR [orgclass]
GO
ALTER TABLE [sys_org] ADD  DEFAULT (NULL) FOR [parent_objid]
GO
ALTER TABLE [sys_org] ADD  DEFAULT (NULL) FOR [parent_orgclass]
GO
ALTER TABLE [sys_org] ADD  DEFAULT ((0)) FOR [root]
GO
ALTER TABLE [sys_orgclass] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [objid]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [reportfolderid]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [filetype]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [dtcreated]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [createdby]
GO
ALTER TABLE [sys_report] ADD  DEFAULT (NULL) FOR [datasetid]
GO
ALTER TABLE [sys_report_admin] ADD  DEFAULT (NULL) FOR [userid]
GO
ALTER TABLE [sys_report_admin] ADD  DEFAULT (NULL) FOR [reportfolderid]
GO
ALTER TABLE [sys_report_folder] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_report_folder] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_report_folder] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_report_member] ADD  DEFAULT (NULL) FOR [objid]
GO
ALTER TABLE [sys_report_member] ADD  DEFAULT (NULL) FOR [reportfolderid]
GO
ALTER TABLE [sys_report_member] ADD  DEFAULT (NULL) FOR [userid]
GO
ALTER TABLE [sys_report_member] ADD  DEFAULT (NULL) FOR [usergroupid]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__objid__185783AC]  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__state__194BA7E5]  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__name__1A3FCC1E]  DEFAULT ('') FOR [name]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__rulegr__1B33F057]  DEFAULT (NULL) FOR [rulegroup]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__title__1C281490]  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__salien__1D1C38C9]  DEFAULT ('0') FOR [salience]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__effect__1E105D02]  DEFAULT (NULL) FOR [effectivefrom]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__effect__1F04813B]  DEFAULT (NULL) FOR [effectiveto]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__dtfile__1FF8A574]  DEFAULT (NULL) FOR [dtfiled]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__user_o__20ECC9AD]  DEFAULT (NULL) FOR [user_objid]
GO
ALTER TABLE [sys_rule] ADD  CONSTRAINT [DF__sys_rule__user_n__21E0EDE6]  DEFAULT (NULL) FOR [user_name]
GO
ALTER TABLE [sys_rule_action] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [sys_rule_action] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_rule_action] ADD  DEFAULT (NULL) FOR [actiondef_objid]
GO
ALTER TABLE [sys_rule_action] ADD  DEFAULT (NULL) FOR [actiondef_name]
GO
ALTER TABLE [sys_rule_action] ADD  DEFAULT (NULL) FOR [pos]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [actiondefparam_objid]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [stringvalue]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [booleanvalue]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [var_objid]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [var_name]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [exprtype]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [pos]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [obj_key]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [obj_value]
GO
ALTER TABLE [sys_rule_action_param] ADD  DEFAULT (NULL) FOR [lov]
GO
ALTER TABLE [sys_rule_actiondef] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [sys_rule_actiondef] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [sys_rule_actiondef] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_rule_actiondef] ADD  DEFAULT (NULL) FOR [sortorder]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [sortorder]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [datatype]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [handler]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lookuphandler]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lookupkey]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lookupvalue]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [vardatatype]
GO
ALTER TABLE [sys_rule_actiondef_param] ADD  DEFAULT (NULL) FOR [lovname]
GO
ALTER TABLE [sys_rule_condition] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_rule_condition] ADD  DEFAULT (NULL) FOR [fact_name]
GO
ALTER TABLE [sys_rule_condition] ADD  DEFAULT (NULL) FOR [fact_objid]
GO
ALTER TABLE [sys_rule_condition] ADD  DEFAULT (NULL) FOR [varname]
GO
ALTER TABLE [sys_rule_condition] ADD  DEFAULT (NULL) FOR [pos]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___paren__77809FC6]  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___field__7874C3FF]  DEFAULT (NULL) FOR [field_objid]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___field__7968E838]  DEFAULT (NULL) FOR [fieldname]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___varna__7A5D0C71]  DEFAULT (NULL) FOR [varname]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___opera__7B5130AA]  DEFAULT (NULL) FOR [operator_caption]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___opera__7C4554E3]  DEFAULT (NULL) FOR [operator_symbol]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___useva__7D39791C]  DEFAULT (NULL) FOR [usevar]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___var_o__7E2D9D55]  DEFAULT (NULL) FOR [var_objid]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___var_n__7F21C18E]  DEFAULT (NULL) FOR [var_name]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___decim__0015E5C7]  DEFAULT (NULL) FOR [decimalvalue]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___intva__010A0A00]  DEFAULT (NULL) FOR [intvalue]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule___strin__01FE2E39]  DEFAULT (NULL) FOR [stringvalue]
GO
ALTER TABLE [sys_rule_condition_constraint] ADD  CONSTRAINT [DF__sys_rule_co__pos__02F25272]  DEFAULT (NULL) FOR [pos]
GO
ALTER TABLE [sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [ruleid]
GO
ALTER TABLE [sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [varname]
GO
ALTER TABLE [sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [datatype]
GO
ALTER TABLE [sys_rule_condition_var] ADD  DEFAULT (NULL) FOR [pos]
GO
ALTER TABLE [sys_rule_deployed] ADD  DEFAULT ('') FOR [objid]
GO
ALTER TABLE [sys_rule_fact] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [sys_rule_fact] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_rule_fact] ADD  DEFAULT (NULL) FOR [factclass]
GO
ALTER TABLE [sys_rule_fact] ADD  DEFAULT (NULL) FOR [sortorder]
GO
ALTER TABLE [sys_rule_fact] ADD  DEFAULT (NULL) FOR [handler]
GO
ALTER TABLE [sys_rule_fact] ADD  DEFAULT (NULL) FOR [defaultvarname]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [datatype]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [sortorder]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [handler]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookuphandler]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookupkey]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookupvalue]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lookupdatatype]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [multivalued]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [required]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [vardatatype]
GO
ALTER TABLE [sys_rule_fact_field] ADD  DEFAULT (NULL) FOR [lovname]
GO
ALTER TABLE [sys_rulegroup] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_rulegroup] ADD  DEFAULT ('0') FOR [sortorder]
GO
ALTER TABLE [sys_ruleset] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_ruleset] ADD  DEFAULT (NULL) FOR [packagename]
GO
ALTER TABLE [sys_ruleset] ADD  DEFAULT (NULL) FOR [domain]
GO
ALTER TABLE [sys_ruleset] ADD  DEFAULT (NULL) FOR [role]
GO
ALTER TABLE [sys_ruleset] ADD  DEFAULT (NULL) FOR [permission]
GO
ALTER TABLE [sys_script] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_script] ADD  DEFAULT (NULL) FOR [category]
GO
ALTER TABLE [sys_script] ADD  DEFAULT (NULL) FOR [dtcreated]
GO
ALTER TABLE [sys_script] ADD  DEFAULT (NULL) FOR [createdby]
GO
ALTER TABLE [sys_securitygroup] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_securitygroup] ADD  DEFAULT (NULL) FOR [usergroup_objid]
GO
ALTER TABLE [sys_session] ADD  DEFAULT (NULL) FOR [userid]
GO
ALTER TABLE [sys_session] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [sys_session] ADD  DEFAULT (NULL) FOR [clienttype]
GO
ALTER TABLE [sys_session] ADD  DEFAULT (NULL) FOR [accesstime]
GO
ALTER TABLE [sys_session] ADD  DEFAULT (NULL) FOR [accessexpiry]
GO
ALTER TABLE [sys_session] ADD  DEFAULT (NULL) FOR [timein]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [userid]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [clienttype]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [accesstime]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [accessexpiry]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [timein]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [timeout]
GO
ALTER TABLE [sys_session_log] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [sys_terminal] ADD  DEFAULT (NULL) FOR [parentid]
GO
ALTER TABLE [sys_terminal] ADD  DEFAULT (NULL) FOR [parentcode]
GO
ALTER TABLE [sys_terminal] ADD  DEFAULT (NULL) FOR [parenttype]
GO
ALTER TABLE [sys_terminal] ADD  DEFAULT (NULL) FOR [dtregistered]
GO
ALTER TABLE [sys_terminal] ADD  DEFAULT (NULL) FOR [registeredby]
GO
ALTER TABLE [sys_terminal] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [dtcreated]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [createdby]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [pwd]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [firstname]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [lastname]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [middlename]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [jobtitle]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [pwdlogincount]
GO
ALTER TABLE [sys_user] ADD  DEFAULT (NULL) FOR [lockid]
GO
ALTER TABLE [sys_usergroup] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [sys_usergroup] ADD  DEFAULT (NULL) FOR [domain]
GO
ALTER TABLE [sys_usergroup] ADD  DEFAULT (NULL) FOR [userclass]
GO
ALTER TABLE [sys_usergroup] ADD  DEFAULT (NULL) FOR [orgclass]
GO
ALTER TABLE [sys_usergroup_admin] ADD  DEFAULT (NULL) FOR [usergroupid]
GO
ALTER TABLE [sys_usergroup_admin] ADD  DEFAULT (NULL) FOR [user_objid]
GO
ALTER TABLE [sys_usergroup_admin] ADD  DEFAULT (NULL) FOR [user_username]
GO
ALTER TABLE [sys_usergroup_admin] ADD  DEFAULT (NULL) FOR [user_lastname]
GO
ALTER TABLE [sys_usergroup_admin] ADD  DEFAULT (NULL) FOR [exclude]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [usergroup_objid]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [user_username]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [org_objid]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [org_name]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [org_orgclass]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [securitygroup_objid]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [exclude]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [displayname]
GO
ALTER TABLE [sys_usergroup_member] ADD  DEFAULT (NULL) FOR [jobtitle]
GO
ALTER TABLE [sys_usergroup_permission] ADD  DEFAULT (NULL) FOR [usergroup_objid]
GO
ALTER TABLE [sys_usergroup_permission] ADD  DEFAULT (NULL) FOR [object]
GO
ALTER TABLE [sys_usergroup_permission] ADD  DEFAULT (NULL) FOR [permission]
GO
ALTER TABLE [sys_var] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [sys_var] ADD  DEFAULT (NULL) FOR [datatype]
GO
ALTER TABLE [sys_var] ADD  DEFAULT (NULL) FOR [category]
GO
ALTER TABLE [txnlog] ADD  DEFAULT (NULL) FOR [remarks]
GO
ALTER TABLE [txnsignatory] ADD  DEFAULT (NULL) FOR [personnelid]
GO
ALTER TABLE [txnsignatory] ADD  DEFAULT (NULL) FOR [caption]
GO
ALTER TABLE [txnsignatory] ADD  DEFAULT (NULL) FOR [dtsigned]
GO
ALTER TABLE [account_incometarget]  WITH NOCHECK ADD  CONSTRAINT [FK_account_incometarget_account] FOREIGN KEY([objid])
REFERENCES [account] ([objid])
GO
ALTER TABLE [account_incometarget] NOCHECK CONSTRAINT [FK_account_incometarget_account]
GO
ALTER TABLE [afserial]  WITH NOCHECK ADD  CONSTRAINT [FK_stockitem_afserial] FOREIGN KEY([objid])
REFERENCES [stockitem] ([objid])
GO
ALTER TABLE [afserial] NOCHECK CONSTRAINT [FK_stockitem_afserial]
GO
ALTER TABLE [afserial]  WITH NOCHECK ADD  CONSTRAINT [FK_stockitem_afserial_cashreceiptform] FOREIGN KEY([objid])
REFERENCES [collectionform] ([objid])
GO
ALTER TABLE [afserial] NOCHECK CONSTRAINT [FK_stockitem_afserial_cashreceiptform]
GO
ALTER TABLE [afserial_control]  WITH NOCHECK ADD  CONSTRAINT [FK_active_afserial_afcontrol] FOREIGN KEY([controlid])
REFERENCES [afserial_inventory] ([objid])
GO
ALTER TABLE [afserial_control] NOCHECK CONSTRAINT [FK_active_afserial_afcontrol]
GO
ALTER TABLE [afserial_inventory_detail]  WITH NOCHECK ADD  CONSTRAINT [FK_afcontrol_detail_afcontrol] FOREIGN KEY([controlid])
REFERENCES [afserial_inventory] ([objid])
GO
ALTER TABLE [afserial_inventory_detail] NOCHECK CONSTRAINT [FK_afcontrol_detail_afcontrol]
GO
ALTER TABLE [ap_detail]  WITH NOCHECK ADD  CONSTRAINT [ap_detail_ap] FOREIGN KEY([parentid])
REFERENCES [ap] ([objid])
GO
ALTER TABLE [ap_detail] NOCHECK CONSTRAINT [ap_detail_ap]
GO
ALTER TABLE [ar_detail]  WITH NOCHECK ADD  CONSTRAINT [ar_detail_ar] FOREIGN KEY([parentid])
REFERENCES [ar] ([objid])
GO
ALTER TABLE [ar_detail] NOCHECK CONSTRAINT [ar_detail_ar]
GO
ALTER TABLE [assessmentnoticeitem]  WITH NOCHECK ADD  CONSTRAINT [FK_assessmentnoticeitem_assessmentnotice] FOREIGN KEY([assessmentnoticeid])
REFERENCES [assessmentnotice] ([objid])
GO
ALTER TABLE [assessmentnoticeitem] NOCHECK CONSTRAINT [FK_assessmentnoticeitem_assessmentnotice]
GO
ALTER TABLE [assessmentnoticeitem]  WITH NOCHECK ADD  CONSTRAINT [FK_assessmentnoticeitem_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [assessmentnoticeitem] NOCHECK CONSTRAINT [FK_assessmentnoticeitem_faas]
GO
ALTER TABLE [bankaccount_account]  WITH NOCHECK ADD  CONSTRAINT [FK_bankaccount_account_account] FOREIGN KEY([acctid])
REFERENCES [account] ([objid])
GO
ALTER TABLE [bankaccount_account] NOCHECK CONSTRAINT [FK_bankaccount_account_account]
GO
ALTER TABLE [bankaccount_account]  WITH NOCHECK ADD  CONSTRAINT [FK_bankaccount_account_bankaccount] FOREIGN KEY([objid])
REFERENCES [bankaccount] ([objid])
GO
ALTER TABLE [bankaccount_account] NOCHECK CONSTRAINT [FK_bankaccount_account_bankaccount]
GO
ALTER TABLE [bankaccount_entry]  WITH NOCHECK ADD  CONSTRAINT [bankaccount_parent] FOREIGN KEY([parentid])
REFERENCES [bankaccount] ([objid])
GO
ALTER TABLE [bankaccount_entry] NOCHECK CONSTRAINT [bankaccount_parent]
GO
ALTER TABLE [bankdeposit_entry_check]  WITH NOCHECK ADD  CONSTRAINT [FK_bankdeposit_check] FOREIGN KEY([parentid])
REFERENCES [bankdeposit_entry] ([objid])
GO
ALTER TABLE [bankdeposit_entry_check] NOCHECK CONSTRAINT [FK_bankdeposit_check]
GO
ALTER TABLE [bankdeposit_entry_check]  WITH NOCHECK ADD  CONSTRAINT [FK_bankdeposit_check_checkpayment] FOREIGN KEY([objid])
REFERENCES [cashreceiptpayment_check] ([objid])
GO
ALTER TABLE [bankdeposit_entry_check] NOCHECK CONSTRAINT [FK_bankdeposit_check_checkpayment]
GO
ALTER TABLE [bankdeposit_liquidation]  WITH NOCHECK ADD  CONSTRAINT [FK_bankdeposit_liquidation] FOREIGN KEY([bankdepositid])
REFERENCES [bankdeposit] ([objid])
GO
ALTER TABLE [bankdeposit_liquidation] NOCHECK CONSTRAINT [FK_bankdeposit_liquidation]
GO
ALTER TABLE [bankdeposit_liquidation]  WITH NOCHECK ADD  CONSTRAINT [FK_bankdeposit_liquidation_fund] FOREIGN KEY([objid])
REFERENCES [liquidation_cashier_fund] ([objid])
GO
ALTER TABLE [bankdeposit_liquidation] NOCHECK CONSTRAINT [FK_bankdeposit_liquidation_fund]
GO
ALTER TABLE [bldgadditionalitem]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgadditionalitem] FOREIGN KEY([previd])
REFERENCES [bldgadditionalitem] ([objid])
GO
ALTER TABLE [bldgadditionalitem] NOCHECK CONSTRAINT [FK_bldgadditionalitem]
GO
ALTER TABLE [bldgadditionalitem]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgadditionalitem_bldgrysetting] FOREIGN KEY([bldgrysettingid])
REFERENCES [bldgrysetting] ([objid])
GO
ALTER TABLE [bldgadditionalitem] NOCHECK CONSTRAINT [FK_bldgadditionalitem_bldgrysetting]
GO
ALTER TABLE [bldgassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgassesslevel_bldgrysettingid] FOREIGN KEY([bldgrysettingid])
REFERENCES [bldgrysetting] ([objid])
GO
ALTER TABLE [bldgassesslevel] NOCHECK CONSTRAINT [FK_bldgassesslevel_bldgrysettingid]
GO
ALTER TABLE [bldgassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgassesslevel_propertyclassification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [bldgassesslevel] NOCHECK CONSTRAINT [FK_bldgassesslevel_propertyclassification]
GO
ALTER TABLE [bldgassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgassesslevelrange_bldgassesslevel] FOREIGN KEY([bldgassesslevelid])
REFERENCES [bldgassesslevel] ([objid])
GO
ALTER TABLE [bldgassesslevelrange] NOCHECK CONSTRAINT [FK_bldgassesslevelrange_bldgassesslevel]
GO
ALTER TABLE [bldgassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgassesslevelrange_bldgrysetting] FOREIGN KEY([bldgrysettingid])
REFERENCES [bldgrysetting] ([objid])
GO
ALTER TABLE [bldgassesslevelrange] NOCHECK CONSTRAINT [FK_bldgassesslevelrange_bldgrysetting]
GO
ALTER TABLE [bldgfloor]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgfloor_bldgrpu] FOREIGN KEY([bldgrpuid])
REFERENCES [bldgrpu] ([objid])
GO
ALTER TABLE [bldgfloor] NOCHECK CONSTRAINT [FK_bldgfloor_bldgrpu]
GO
ALTER TABLE [bldgfloor]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgfloor_bldguse] FOREIGN KEY([bldguseid])
REFERENCES [bldguse] ([objid])
GO
ALTER TABLE [bldgfloor] NOCHECK CONSTRAINT [FK_bldgfloor_bldguse]
GO
ALTER TABLE [bldgflooradditional]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgflooradditional_additionalitem] FOREIGN KEY([additionalitem_objid])
REFERENCES [bldgadditionalitem] ([objid])
GO
ALTER TABLE [bldgflooradditional] NOCHECK CONSTRAINT [FK_bldgflooradditional_additionalitem]
GO
ALTER TABLE [bldgflooradditional]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgflooradditional_bldgfloor] FOREIGN KEY([bldgfloorid])
REFERENCES [bldgfloor] ([objid])
GO
ALTER TABLE [bldgflooradditional] NOCHECK CONSTRAINT [FK_bldgflooradditional_bldgfloor]
GO
ALTER TABLE [bldgflooradditional]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgflooradditional_bldgrpu] FOREIGN KEY([bldgrpuid])
REFERENCES [bldgrpu] ([objid])
GO
ALTER TABLE [bldgflooradditional] NOCHECK CONSTRAINT [FK_bldgflooradditional_bldgrpu]
GO
ALTER TABLE [bldgflooradditionalparam]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgflooradditionalparam_bldgflooradditional] FOREIGN KEY([bldgflooradditionalid])
REFERENCES [bldgflooradditional] ([objid])
GO
ALTER TABLE [bldgflooradditionalparam] NOCHECK CONSTRAINT [FK_bldgflooradditionalparam_bldgflooradditional]
GO
ALTER TABLE [bldgflooradditionalparam]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgflooradditionalparam_bldgrpu] FOREIGN KEY([bldgrpuid])
REFERENCES [bldgrpu] ([objid])
GO
ALTER TABLE [bldgflooradditionalparam] NOCHECK CONSTRAINT [FK_bldgflooradditionalparam_bldgrpu]
GO
ALTER TABLE [bldgflooradditionalparam]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgflooradditionalparam_param] FOREIGN KEY([param_objid])
REFERENCES [rptparameter] ([objid])
GO
ALTER TABLE [bldgflooradditionalparam] NOCHECK CONSTRAINT [FK_bldgflooradditionalparam_param]
GO
ALTER TABLE [bldgkindbucc]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgkindbucc_bldgkind] FOREIGN KEY([bldgkind_objid])
REFERENCES [bldgkind] ([objid])
GO
ALTER TABLE [bldgkindbucc] NOCHECK CONSTRAINT [FK_bldgkindbucc_bldgkind]
GO
ALTER TABLE [bldgkindbucc]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgkindbucc_bldgrysettingid] FOREIGN KEY([bldgrysettingid])
REFERENCES [bldgrysetting] ([objid])
GO
ALTER TABLE [bldgkindbucc] NOCHECK CONSTRAINT [FK_bldgkindbucc_bldgrysettingid]
GO
ALTER TABLE [bldgkindbucc]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgkindbucc_bldgtype] FOREIGN KEY([bldgtypeid])
REFERENCES [bldgtype] ([objid])
GO
ALTER TABLE [bldgkindbucc] NOCHECK CONSTRAINT [FK_bldgkindbucc_bldgtype]
GO
ALTER TABLE [bldgrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgrpu_bldgassesslevel] FOREIGN KEY([bldgassesslevel_objid])
REFERENCES [bldgassesslevel] ([objid])
GO
ALTER TABLE [bldgrpu] NOCHECK CONSTRAINT [FK_bldgrpu_bldgassesslevel]
GO
ALTER TABLE [bldgrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgrpu_bldgkindbucc] FOREIGN KEY([bldgkindbucc_objid])
REFERENCES [bldgkindbucc] ([objid])
GO
ALTER TABLE [bldgrpu] NOCHECK CONSTRAINT [FK_bldgrpu_bldgkindbucc]
GO
ALTER TABLE [bldgrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgrpu_bldgtype] FOREIGN KEY([bldgtype_objid])
REFERENCES [bldgtype] ([objid])
GO
ALTER TABLE [bldgrpu] NOCHECK CONSTRAINT [FK_bldgrpu_bldgtype]
GO
ALTER TABLE [bldgrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgrpu_landrpu] FOREIGN KEY([landrpuid])
REFERENCES [landrpu] ([objid])
GO
ALTER TABLE [bldgrpu] NOCHECK CONSTRAINT [FK_bldgrpu_landrpu]
GO
ALTER TABLE [bldgrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgrpu_rpu] FOREIGN KEY([objid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [bldgrpu] NOCHECK CONSTRAINT [FK_bldgrpu_rpu]
GO
ALTER TABLE [bldgstructure]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgstructure_bldgrpu] FOREIGN KEY([bldgrpuid])
REFERENCES [bldgrpu] ([objid])
GO
ALTER TABLE [bldgstructure] NOCHECK CONSTRAINT [FK_bldgstructure_bldgrpu]
GO
ALTER TABLE [bldgstructure]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgstructure_material] FOREIGN KEY([material_objid])
REFERENCES [material] ([objid])
GO
ALTER TABLE [bldgstructure] NOCHECK CONSTRAINT [FK_bldgstructure_material]
GO
ALTER TABLE [bldgstructure]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgstructure_structure] FOREIGN KEY([structure_objid])
REFERENCES [structure] ([objid])
GO
ALTER TABLE [bldgstructure] NOCHECK CONSTRAINT [FK_bldgstructure_structure]
GO
ALTER TABLE [bldgtype]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgtype_bldgrysetting] FOREIGN KEY([bldgrysettingid])
REFERENCES [bldgrysetting] ([objid])
GO
ALTER TABLE [bldgtype] NOCHECK CONSTRAINT [FK_bldgtype_bldgrysetting]
GO
ALTER TABLE [bldgtype]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgtype_bldgtype] FOREIGN KEY([previd])
REFERENCES [bldgtype] ([objid])
GO
ALTER TABLE [bldgtype] NOCHECK CONSTRAINT [FK_bldgtype_bldgtype]
GO
ALTER TABLE [bldgtype_depreciation]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgtype_depreciation_bldgrysetting] FOREIGN KEY([bldgrysettingid])
REFERENCES [bldgrysetting] ([objid])
GO
ALTER TABLE [bldgtype_depreciation] NOCHECK CONSTRAINT [FK_bldgtype_depreciation_bldgrysetting]
GO
ALTER TABLE [bldgtype_depreciation]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgtype_depreciation_bldgtype] FOREIGN KEY([bldgtypeid])
REFERENCES [bldgtype] ([objid])
GO
ALTER TABLE [bldgtype_depreciation] NOCHECK CONSTRAINT [FK_bldgtype_depreciation_bldgtype]
GO
ALTER TABLE [bldgtype_storeyadjustment]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgtype_storeyadjustment] FOREIGN KEY([previd])
REFERENCES [bldgtype_storeyadjustment] ([objid])
GO
ALTER TABLE [bldgtype_storeyadjustment] NOCHECK CONSTRAINT [FK_bldgtype_storeyadjustment]
GO
ALTER TABLE [bldgtype_storeyadjustment]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgtype_storeyadjustment_bldgrysetting] FOREIGN KEY([bldgrysettingid])
REFERENCES [bldgrysetting] ([objid])
GO
ALTER TABLE [bldgtype_storeyadjustment] NOCHECK CONSTRAINT [FK_bldgtype_storeyadjustment_bldgrysetting]
GO
ALTER TABLE [bldgtype_storeyadjustment]  WITH NOCHECK ADD  CONSTRAINT [FK_bldgtype_storeyadjustment_bldgtype] FOREIGN KEY([bldgtypeid])
REFERENCES [bldgtype] ([objid])
GO
ALTER TABLE [bldgtype_storeyadjustment] NOCHECK CONSTRAINT [FK_bldgtype_storeyadjustment_bldgtype]
GO
ALTER TABLE [bldguse]  WITH NOCHECK ADD  CONSTRAINT [FK_bldguse_bldgassesslevel] FOREIGN KEY([actualuse_objid])
REFERENCES [bldgassesslevel] ([objid])
GO
ALTER TABLE [bldguse] NOCHECK CONSTRAINT [FK_bldguse_bldgassesslevel]
GO
ALTER TABLE [bldguse]  WITH NOCHECK ADD  CONSTRAINT [FK_bldguse_bldgrpu] FOREIGN KEY([bldgrpuid])
REFERENCES [bldgrpu] ([objid])
GO
ALTER TABLE [bldguse] NOCHECK CONSTRAINT [FK_bldguse_bldgrpu]
GO
ALTER TABLE [bpapplication]  WITH NOCHECK ADD  CONSTRAINT [FK_bpapplication_business] FOREIGN KEY([businessid])
REFERENCES [business] ([objid])
GO
ALTER TABLE [bpapplication] NOCHECK CONSTRAINT [FK_bpapplication_business]
GO
ALTER TABLE [bpapplication_requirement]  WITH NOCHECK ADD  CONSTRAINT [FK_bpapplication_requirement_business] FOREIGN KEY([businessid])
REFERENCES [business] ([objid])
GO
ALTER TABLE [bpapplication_requirement] NOCHECK CONSTRAINT [FK_bpapplication_requirement_business]
GO
ALTER TABLE [bpapplication_task]  WITH NOCHECK ADD  CONSTRAINT [FK_bpapplication_task_bpapplication] FOREIGN KEY([applicationid])
REFERENCES [bpapplication] ([objid])
GO
ALTER TABLE [bpapplication_task] NOCHECK CONSTRAINT [FK_bpapplication_task_bpapplication]
GO
ALTER TABLE [bppayment]  WITH NOCHECK ADD  CONSTRAINT [FK_bppayment_business] FOREIGN KEY([businessid])
REFERENCES [business] ([objid])
GO
ALTER TABLE [bppayment] NOCHECK CONSTRAINT [FK_bppayment_business]
GO
ALTER TABLE [brgyshareitem]  WITH NOCHECK ADD  CONSTRAINT [FK_brgyshareitem_brgyshare] FOREIGN KEY([brgyshareid])
REFERENCES [brgyshare] ([objid])
GO
ALTER TABLE [brgyshareitem] NOCHECK CONSTRAINT [FK_brgyshareitem_brgyshare]
GO
ALTER TABLE [business_changeinfo]  WITH NOCHECK ADD  CONSTRAINT [FK_business_changeinfo_business] FOREIGN KEY([businessid])
REFERENCES [business] ([objid])
GO
ALTER TABLE [business_changeinfo] NOCHECK CONSTRAINT [FK_business_changeinfo_business]
GO
ALTER TABLE [business_taxcredit]  WITH NOCHECK ADD  CONSTRAINT [FK_business_taxcredit_business] FOREIGN KEY([businessid])
REFERENCES [business] ([objid])
GO
ALTER TABLE [business_taxcredit] NOCHECK CONSTRAINT [FK_business_taxcredit_business]
GO
ALTER TABLE [business_taxcredit_detail]  WITH NOCHECK ADD  CONSTRAINT [FK_business_taxcredit_detail_business_taxcredit] FOREIGN KEY([parentid])
REFERENCES [business_taxcredit] ([objid])
GO
ALTER TABLE [business_taxcredit_detail] NOCHECK CONSTRAINT [FK_business_taxcredit_detail_business_taxcredit]
GO
ALTER TABLE [cancelannotation]  WITH NOCHECK ADD  CONSTRAINT [FK_cancelannotation_faasannotation] FOREIGN KEY([annotationid])
REFERENCES [faasannotation] ([objid])
GO
ALTER TABLE [cancelannotation] NOCHECK CONSTRAINT [FK_cancelannotation_faasannotation]
GO
ALTER TABLE [cancelledfaas]  WITH NOCHECK ADD  CONSTRAINT [FK_cancelledfaas_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [cancelledfaas] NOCHECK CONSTRAINT [FK_cancelledfaas_faas]
GO
ALTER TABLE [cancelledfaas]  WITH NOCHECK ADD  CONSTRAINT [FK_cancelledfaas_reason] FOREIGN KEY([reason_objid])
REFERENCES [canceltdreason] ([objid])
GO
ALTER TABLE [cancelledfaas] NOCHECK CONSTRAINT [FK_cancelledfaas_reason]
GO
ALTER TABLE [cashbook]  WITH NOCHECK ADD  CONSTRAINT [FK_cashbook_fund] FOREIGN KEY([fund_objid])
REFERENCES [fund] ([objid])
GO
ALTER TABLE [cashbook] NOCHECK CONSTRAINT [FK_cashbook_fund]
GO
ALTER TABLE [cashbook_entry]  WITH NOCHECK ADD  CONSTRAINT [cashbook_parent] FOREIGN KEY([parentid])
REFERENCES [cashbook] ([objid])
GO
ALTER TABLE [cashbook_entry] NOCHECK CONSTRAINT [cashbook_parent]
GO
ALTER TABLE [cashreceipt]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceipt_collector] FOREIGN KEY([collector_objid])
REFERENCES [sys_user] ([objid])
GO
ALTER TABLE [cashreceipt] NOCHECK CONSTRAINT [FK_cashreceipt_collector]
GO
ALTER TABLE [cashreceipt_business]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceipt_business_cashreceipt] FOREIGN KEY([objid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceipt_business] NOCHECK CONSTRAINT [FK_cashreceipt_business_cashreceipt]
GO
ALTER TABLE [cashreceipt_business_item]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceipt_business_item_cashreceipt_business] FOREIGN KEY([parentid])
REFERENCES [cashreceipt_business] ([objid])
GO
ALTER TABLE [cashreceipt_business_item] NOCHECK CONSTRAINT [FK_cashreceipt_business_item_cashreceipt_business]
GO
ALTER TABLE [cashreceipt_business_item]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceipt_business_item_cashreceipt_business_item] FOREIGN KEY([objid])
REFERENCES [cashreceiptitem] ([objid])
GO
ALTER TABLE [cashreceipt_business_item] NOCHECK CONSTRAINT [FK_cashreceipt_business_item_cashreceipt_business_item]
GO
ALTER TABLE [cashreceipt_cancelseries]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceipt_cancelseries_receipt] FOREIGN KEY([receiptid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceipt_cancelseries] NOCHECK CONSTRAINT [FK_cashreceipt_cancelseries_receipt]
GO
ALTER TABLE [cashreceipt_cashticket]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceipt_cashticket_cashreceipt] FOREIGN KEY([objid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceipt_cashticket] NOCHECK CONSTRAINT [FK_cashreceipt_cashticket_cashreceipt]
GO
ALTER TABLE [cashreceipt_ctc_corporate]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceiptctccorporate_cashreceipt] FOREIGN KEY([objid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceipt_ctc_corporate] NOCHECK CONSTRAINT [FK_cashreceiptctccorporate_cashreceipt]
GO
ALTER TABLE [cashreceipt_ctc_individual]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceiptctcindividual_cashreceipt] FOREIGN KEY([objid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceipt_ctc_individual] NOCHECK CONSTRAINT [FK_cashreceiptctcindividual_cashreceipt]
GO
ALTER TABLE [cashreceipt_void]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceipt_void_cashreceipt] FOREIGN KEY([receiptid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceipt_void] NOCHECK CONSTRAINT [FK_cashreceipt_void_cashreceipt]
GO
ALTER TABLE [cashreceiptitem]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceiptitem] FOREIGN KEY([receiptid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceiptitem] NOCHECK CONSTRAINT [FK_cashreceiptitem]
GO
ALTER TABLE [cashreceiptitem_rpt]  WITH NOCHECK ADD  CONSTRAINT [FK_rptreceiptitem_rptledger] FOREIGN KEY([rptledgerid])
REFERENCES [rptledger] ([objid])
GO
ALTER TABLE [cashreceiptitem_rpt] NOCHECK CONSTRAINT [FK_rptreceiptitem_rptledger]
GO
ALTER TABLE [cashreceiptitem_rpt]  WITH NOCHECK ADD  CONSTRAINT [FK_rptreceiptitem_rptreceipt] FOREIGN KEY([rptreceiptid])
REFERENCES [cashreceipt_rpt] ([objid])
GO
ALTER TABLE [cashreceiptitem_rpt] NOCHECK CONSTRAINT [FK_rptreceiptitem_rptreceipt]
GO
ALTER TABLE [cashreceiptitem_rpt_noledger]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceiptitem_rpt_noledger_cashreceiptitem_rpt] FOREIGN KEY([objid])
REFERENCES [cashreceiptitem_rpt] ([objid])
GO
ALTER TABLE [cashreceiptitem_rpt_noledger] NOCHECK CONSTRAINT [FK_cashreceiptitem_rpt_noledger_cashreceiptitem_rpt]
GO
ALTER TABLE [cashreceiptpayment_check]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceiptpayment_check] FOREIGN KEY([receiptid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [cashreceiptpayment_check] NOCHECK CONSTRAINT [FK_cashreceiptpayment_check]
GO
ALTER TABLE [cashreceiptpayment_check]  WITH NOCHECK ADD  CONSTRAINT [FK_cashreceiptpayment_check_bank] FOREIGN KEY([bankid])
REFERENCES [bank] ([objid])
GO
ALTER TABLE [cashreceiptpayment_check] NOCHECK CONSTRAINT [FK_cashreceiptpayment_check_bank]
GO
ALTER TABLE [cashticket]  WITH NOCHECK ADD  CONSTRAINT [FK_stockitem_cashticket] FOREIGN KEY([objid])
REFERENCES [stockitem] ([objid])
GO
ALTER TABLE [cashticket] NOCHECK CONSTRAINT [FK_stockitem_cashticket]
GO
ALTER TABLE [cashticket]  WITH NOCHECK ADD  CONSTRAINT [FK_stockitem_cashticket_cashreceiptform] FOREIGN KEY([objid])
REFERENCES [collectionform] ([objid])
GO
ALTER TABLE [cashticket] NOCHECK CONSTRAINT [FK_stockitem_cashticket_cashreceiptform]
GO
ALTER TABLE [cashticket_control]  WITH NOCHECK ADD  CONSTRAINT [FK_cashticket_control_inventory] FOREIGN KEY([controlid])
REFERENCES [cashticket_inventory] ([objid])
GO
ALTER TABLE [cashticket_control] NOCHECK CONSTRAINT [FK_cashticket_control_inventory]
GO
ALTER TABLE [consolidatedland]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidatedland_consolidation] FOREIGN KEY([consolidationid])
REFERENCES [consolidation] ([objid])
GO
ALTER TABLE [consolidatedland] NOCHECK CONSTRAINT [FK_consolidatedland_consolidation]
GO
ALTER TABLE [consolidatedland]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidatedland_faas] FOREIGN KEY([landfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [consolidatedland] NOCHECK CONSTRAINT [FK_consolidatedland_faas]
GO
ALTER TABLE [consolidation]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidation_newfaas] FOREIGN KEY([newfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [consolidation] NOCHECK CONSTRAINT [FK_consolidation_newfaas]
GO
ALTER TABLE [consolidation]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidation_newrp] FOREIGN KEY([newrpid])
REFERENCES [realproperty] ([objid])
GO
ALTER TABLE [consolidation] NOCHECK CONSTRAINT [FK_consolidation_newrp]
GO
ALTER TABLE [consolidation]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidation_newrpu] FOREIGN KEY([newrpuid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [consolidation] NOCHECK CONSTRAINT [FK_consolidation_newrpu]
GO
ALTER TABLE [consolidationaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidationaffectedrpu_consolidation] FOREIGN KEY([consolidationid])
REFERENCES [consolidation] ([objid])
GO
ALTER TABLE [consolidationaffectedrpu] NOCHECK CONSTRAINT [FK_consolidationaffectedrpu_consolidation]
GO
ALTER TABLE [consolidationaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidationaffectedrpu_newfaas] FOREIGN KEY([newfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [consolidationaffectedrpu] NOCHECK CONSTRAINT [FK_consolidationaffectedrpu_newfaas]
GO
ALTER TABLE [consolidationaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidationaffectedrpu_newrpu] FOREIGN KEY([newrpuid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [consolidationaffectedrpu] NOCHECK CONSTRAINT [FK_consolidationaffectedrpu_newrpu]
GO
ALTER TABLE [consolidationaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_consolidationaffectedrpu_prevfaas] FOREIGN KEY([prevfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [consolidationaffectedrpu] NOCHECK CONSTRAINT [FK_consolidationaffectedrpu_prevfaas]
GO
ALTER TABLE [directcash_collection_item]  WITH NOCHECK ADD  CONSTRAINT [FK_directcash_collection_item] FOREIGN KEY([parentid])
REFERENCES [directcash_collection] ([objid])
GO
ALTER TABLE [directcash_collection_item] NOCHECK CONSTRAINT [FK_directcash_collection_item]
GO
ALTER TABLE [directcash_collection_item]  WITH NOCHECK ADD  CONSTRAINT [FK_directcash_collection_item_revenueitem] FOREIGN KEY([item_objid])
REFERENCES [revenueitem] ([objid])
GO
ALTER TABLE [directcash_collection_item] NOCHECK CONSTRAINT [FK_directcash_collection_item_revenueitem]
GO
ALTER TABLE [faas]  WITH NOCHECK ADD  CONSTRAINT [FK_faas_rpu] FOREIGN KEY([rpuid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [faas] NOCHECK CONSTRAINT [FK_faas_rpu]
GO
ALTER TABLE [faasannotation]  WITH NOCHECK ADD  CONSTRAINT [FK_faasannotation_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [faasannotation] NOCHECK CONSTRAINT [FK_faasannotation_faas]
GO
ALTER TABLE [faasannotation]  WITH NOCHECK ADD  CONSTRAINT [FK_faasannotation_faasannotationtype] FOREIGN KEY([annotationtype_objid])
REFERENCES [faasannotationtype] ([objid])
GO
ALTER TABLE [faasannotation] NOCHECK CONSTRAINT [FK_faasannotation_faasannotationtype]
GO
ALTER TABLE [faasbacktax]  WITH NOCHECK ADD  CONSTRAINT [FK_faasbacktax] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [faasbacktax] NOCHECK CONSTRAINT [FK_faasbacktax]
GO
ALTER TABLE [faasupdate]  WITH NOCHECK ADD  CONSTRAINT [FK_faasupdate_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [faasupdate] NOCHECK CONSTRAINT [FK_faasupdate_faas]
GO
ALTER TABLE [landadjustment]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustment_landadjustmenttype] FOREIGN KEY([adjustmenttype_objid])
REFERENCES [landadjustmenttype] ([objid])
GO
ALTER TABLE [landadjustment] NOCHECK CONSTRAINT [FK_landadjustment_landadjustmenttype]
GO
ALTER TABLE [landadjustment]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustment_landdetail] FOREIGN KEY([landdetailid])
REFERENCES [landdetail] ([objid])
GO
ALTER TABLE [landadjustment] NOCHECK CONSTRAINT [FK_landadjustment_landdetail]
GO
ALTER TABLE [landadjustment]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustment_landrpu] FOREIGN KEY([landrpuid])
REFERENCES [landrpu] ([objid])
GO
ALTER TABLE [landadjustment] NOCHECK CONSTRAINT [FK_landadjustment_landrpu]
GO
ALTER TABLE [landadjustmentparameter]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustmentparameter_landadjustment] FOREIGN KEY([landadjustmentid])
REFERENCES [landadjustment] ([objid])
GO
ALTER TABLE [landadjustmentparameter] NOCHECK CONSTRAINT [FK_landadjustmentparameter_landadjustment]
GO
ALTER TABLE [landadjustmentparameter]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustmentparameter_landrpu] FOREIGN KEY([landrpuid])
REFERENCES [landrpu] ([objid])
GO
ALTER TABLE [landadjustmentparameter] NOCHECK CONSTRAINT [FK_landadjustmentparameter_landrpu]
GO
ALTER TABLE [landadjustmentparameter]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustmentparameter_rptparameter] FOREIGN KEY([parameter_objid])
REFERENCES [rptparameter] ([objid])
GO
ALTER TABLE [landadjustmentparameter] NOCHECK CONSTRAINT [FK_landadjustmentparameter_rptparameter]
GO
ALTER TABLE [landadjustmenttype]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustment_landrysetting] FOREIGN KEY([landrysettingid])
REFERENCES [landrysetting] ([objid])
GO
ALTER TABLE [landadjustmenttype] NOCHECK CONSTRAINT [FK_landadjustment_landrysetting]
GO
ALTER TABLE [landadjustmenttype_classification]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustmenttype_classification_classification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [landadjustmenttype_classification] NOCHECK CONSTRAINT [FK_landadjustmenttype_classification_classification]
GO
ALTER TABLE [landadjustmenttype_classification]  WITH NOCHECK ADD  CONSTRAINT [FK_landadjustmenttype_landadjustment] FOREIGN KEY([landadjustmenttypeid])
REFERENCES [landadjustmenttype] ([objid])
GO
ALTER TABLE [landadjustmenttype_classification] NOCHECK CONSTRAINT [FK_landadjustmenttype_landadjustment]
GO
ALTER TABLE [landassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_landassesslevel_propertyclassification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [landassesslevel] NOCHECK CONSTRAINT [FK_landassesslevel_propertyclassification]
GO
ALTER TABLE [landassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_landassesslevl_landrysetting] FOREIGN KEY([landrysettingid])
REFERENCES [landrysetting] ([objid])
GO
ALTER TABLE [landassesslevel] NOCHECK CONSTRAINT [FK_landassesslevl_landrysetting]
GO
ALTER TABLE [landassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_landassesslevel_landrysetting] FOREIGN KEY([landrysettingid])
REFERENCES [landrysetting] ([objid])
GO
ALTER TABLE [landassesslevelrange] NOCHECK CONSTRAINT [FK_landassesslevel_landrysetting]
GO
ALTER TABLE [landassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_landassesslevelrange_landassesslevel] FOREIGN KEY([landassesslevelid])
REFERENCES [landassesslevel] ([objid])
GO
ALTER TABLE [landassesslevelrange] NOCHECK CONSTRAINT [FK_landassesslevelrange_landassesslevel]
GO
ALTER TABLE [landdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_landdetail_actualuse] FOREIGN KEY([actualuse_objid])
REFERENCES [landassesslevel] ([objid])
GO
ALTER TABLE [landdetail] NOCHECK CONSTRAINT [FK_landdetail_actualuse]
GO
ALTER TABLE [landdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_landdetail_landrpu] FOREIGN KEY([landrpuid])
REFERENCES [landrpu] ([objid])
GO
ALTER TABLE [landdetail] NOCHECK CONSTRAINT [FK_landdetail_landrpu]
GO
ALTER TABLE [landdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_landdetail_lcuvspecificclass] FOREIGN KEY([specificclass_objid])
REFERENCES [lcuvspecificclass] ([objid])
GO
ALTER TABLE [landdetail] NOCHECK CONSTRAINT [FK_landdetail_lcuvspecificclass]
GO
ALTER TABLE [landdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_landdetail_lcuvsubclass] FOREIGN KEY([subclass_objid])
REFERENCES [lcuvsubclass] ([objid])
GO
ALTER TABLE [landdetail] NOCHECK CONSTRAINT [FK_landdetail_lcuvsubclass]
GO
ALTER TABLE [landrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_landrpu_rpu] FOREIGN KEY([objid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [landrpu] NOCHECK CONSTRAINT [FK_landrpu_rpu]
GO
ALTER TABLE [lcuvspecificclass]  WITH NOCHECK ADD  CONSTRAINT [FK_lcuvspecificclass_landrysetting] FOREIGN KEY([landrysettingid])
REFERENCES [landrysetting] ([objid])
GO
ALTER TABLE [lcuvspecificclass] NOCHECK CONSTRAINT [FK_lcuvspecificclass_landrysetting]
GO
ALTER TABLE [lcuvspecificclass]  WITH NOCHECK ADD  CONSTRAINT [FK_lcuvspecificclass_propertyclassification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [lcuvspecificclass] NOCHECK CONSTRAINT [FK_lcuvspecificclass_propertyclassification]
GO
ALTER TABLE [lcuvstripping]  WITH NOCHECK ADD  CONSTRAINT [FK_lcuvstripping_landrysetting] FOREIGN KEY([landrysettingid])
REFERENCES [landrysetting] ([objid])
GO
ALTER TABLE [lcuvstripping] NOCHECK CONSTRAINT [FK_lcuvstripping_landrysetting]
GO
ALTER TABLE [lcuvstripping]  WITH NOCHECK ADD  CONSTRAINT [FK_lcuvstripping_propertyclassification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [lcuvstripping] NOCHECK CONSTRAINT [FK_lcuvstripping_propertyclassification]
GO
ALTER TABLE [lcuvsubclass]  WITH NOCHECK ADD  CONSTRAINT [FK_lcuvsubclass_landrysetting] FOREIGN KEY([landrysettingid])
REFERENCES [landrysetting] ([objid])
GO
ALTER TABLE [lcuvsubclass] NOCHECK CONSTRAINT [FK_lcuvsubclass_landrysetting]
GO
ALTER TABLE [lcuvsubclass]  WITH NOCHECK ADD  CONSTRAINT [FK_lcuvsubclass_lcuvspecificclass] FOREIGN KEY([specificclass_objid])
REFERENCES [lcuvspecificclass] ([objid])
GO
ALTER TABLE [lcuvsubclass] NOCHECK CONSTRAINT [FK_lcuvsubclass_lcuvspecificclass]
GO
ALTER TABLE [liquidation_cashier_fund]  WITH NOCHECK ADD  CONSTRAINT [FK_liquidation_cashier_fund_liquidation] FOREIGN KEY([liquidationid])
REFERENCES [liquidation] ([objid])
GO
ALTER TABLE [liquidation_cashier_fund] NOCHECK CONSTRAINT [FK_liquidation_cashier_fund_liquidation]
GO
ALTER TABLE [liquidation_checkpayment]  WITH NOCHECK ADD  CONSTRAINT [FK_liquidation_checkpayment] FOREIGN KEY([objid])
REFERENCES [cashreceiptpayment_check] ([objid])
GO
ALTER TABLE [liquidation_checkpayment] NOCHECK CONSTRAINT [FK_liquidation_checkpayment]
GO
ALTER TABLE [liquidation_checkpayment]  WITH NOCHECK ADD  CONSTRAINT [FK_liquidation_checkpayment_liquidation] FOREIGN KEY([liquidationid])
REFERENCES [liquidation] ([objid])
GO
ALTER TABLE [liquidation_checkpayment] NOCHECK CONSTRAINT [FK_liquidation_checkpayment_liquidation]
GO
ALTER TABLE [liquidation_remittance]  WITH NOCHECK ADD  CONSTRAINT [FK_liquidation_remittance_liquidation] FOREIGN KEY([liquidationid])
REFERENCES [liquidation] ([objid])
GO
ALTER TABLE [liquidation_remittance] NOCHECK CONSTRAINT [FK_liquidation_remittance_liquidation]
GO
ALTER TABLE [liquidation_remittance]  WITH NOCHECK ADD  CONSTRAINT [FK_liquidation_remittance_remittance] FOREIGN KEY([objid])
REFERENCES [remittance] ([objid])
GO
ALTER TABLE [liquidation_remittance] NOCHECK CONSTRAINT [FK_liquidation_remittance_remittance]
GO
ALTER TABLE [machassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_machassesslevel_machrysetting] FOREIGN KEY([machrysettingid])
REFERENCES [machrysetting] ([objid])
GO
ALTER TABLE [machassesslevel] NOCHECK CONSTRAINT [FK_machassesslevel_machrysetting]
GO
ALTER TABLE [machassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_machassesslevel_propertyclassification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [machassesslevel] NOCHECK CONSTRAINT [FK_machassesslevel_propertyclassification]
GO
ALTER TABLE [machassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_machassesslevelrange_machassesslevel] FOREIGN KEY([machassesslevelid])
REFERENCES [machassesslevel] ([objid])
GO
ALTER TABLE [machassesslevelrange] NOCHECK CONSTRAINT [FK_machassesslevelrange_machassesslevel]
GO
ALTER TABLE [machassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_machassesslevelrange_machrysetting] FOREIGN KEY([machrysettingid])
REFERENCES [machrysetting] ([objid])
GO
ALTER TABLE [machassesslevelrange] NOCHECK CONSTRAINT [FK_machassesslevelrange_machrysetting]
GO
ALTER TABLE [machdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_machdetail_machforex] FOREIGN KEY([feracid])
REFERENCES [machforex] ([objid])
GO
ALTER TABLE [machdetail] NOCHECK CONSTRAINT [FK_machdetail_machforex]
GO
ALTER TABLE [machdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_machdetail_machforexid] FOREIGN KEY([forexid])
REFERENCES [machforex] ([objid])
GO
ALTER TABLE [machdetail] NOCHECK CONSTRAINT [FK_machdetail_machforexid]
GO
ALTER TABLE [machdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_machdetail_machine] FOREIGN KEY([machine_objid])
REFERENCES [machine] ([objid])
GO
ALTER TABLE [machdetail] NOCHECK CONSTRAINT [FK_machdetail_machine]
GO
ALTER TABLE [machdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_machdetail_machrpu] FOREIGN KEY([machrpuid])
REFERENCES [machrpu] ([objid])
GO
ALTER TABLE [machdetail] NOCHECK CONSTRAINT [FK_machdetail_machrpu]
GO
ALTER TABLE [machdetail]  WITH NOCHECK ADD  CONSTRAINT [FK_machdetail_machuse] FOREIGN KEY([machuseid])
REFERENCES [machuse] ([objid])
GO
ALTER TABLE [machdetail] NOCHECK CONSTRAINT [FK_machdetail_machuse]
GO
ALTER TABLE [machforex]  WITH NOCHECK ADD  CONSTRAINT [FK_machforex_machrysetting] FOREIGN KEY([machrysettingid])
REFERENCES [machrysetting] ([objid])
GO
ALTER TABLE [machforex] NOCHECK CONSTRAINT [FK_machforex_machrysetting]
GO
ALTER TABLE [machrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_machrpu_landrpu] FOREIGN KEY([landrpuid])
REFERENCES [landrpu] ([objid])
GO
ALTER TABLE [machrpu] NOCHECK CONSTRAINT [FK_machrpu_landrpu]
GO
ALTER TABLE [machrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_machrpu_rpu] FOREIGN KEY([objid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [machrpu] NOCHECK CONSTRAINT [FK_machrpu_rpu]
GO
ALTER TABLE [machuse]  WITH NOCHECK ADD  CONSTRAINT [FK_machuse_machassesslevel] FOREIGN KEY([actualuse_objid])
REFERENCES [machassesslevel] ([objid])
GO
ALTER TABLE [machuse] NOCHECK CONSTRAINT [FK_machuse_machassesslevel]
GO
ALTER TABLE [machuse]  WITH NOCHECK ADD  CONSTRAINT [FK_machuse_machrpu] FOREIGN KEY([machrpuid])
REFERENCES [machrpu] ([objid])
GO
ALTER TABLE [machuse] NOCHECK CONSTRAINT [FK_machuse_machrpu]
GO
ALTER TABLE [mcsettlement]  WITH NOCHECK ADD  CONSTRAINT [FK_mcsettlement_newfaas] FOREIGN KEY([newfaas_objid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [mcsettlement] NOCHECK CONSTRAINT [FK_mcsettlement_newfaas]
GO
ALTER TABLE [mcsettlement]  WITH NOCHECK ADD  CONSTRAINT [FK_mcsettlement_prevfaas] FOREIGN KEY([prevfaas_objid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [mcsettlement] NOCHECK CONSTRAINT [FK_mcsettlement_prevfaas]
GO
ALTER TABLE [mcsettlement_affectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_mcaffectedrpu_mc] FOREIGN KEY([mcsettlementid])
REFERENCES [mcsettlement] ([objid])
GO
ALTER TABLE [mcsettlement_affectedrpu] NOCHECK CONSTRAINT [FK_mcaffectedrpu_mc]
GO
ALTER TABLE [mcsettlement_affectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_mcaffectedrpu_newfaas] FOREIGN KEY([newfaas_objid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [mcsettlement_affectedrpu] NOCHECK CONSTRAINT [FK_mcaffectedrpu_newfaas]
GO
ALTER TABLE [mcsettlement_affectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_mcaffectedrpu_prevfaas] FOREIGN KEY([prevfaas_objid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [mcsettlement_affectedrpu] NOCHECK CONSTRAINT [FK_mcaffectedrpu_prevfaas]
GO
ALTER TABLE [mcsettlement_otherclaim]  WITH NOCHECK ADD  CONSTRAINT [FK_mcotherclaim_faas] FOREIGN KEY([faas_objid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [mcsettlement_otherclaim] NOCHECK CONSTRAINT [FK_mcotherclaim_faas]
GO
ALTER TABLE [mcsettlement_otherclaim]  WITH NOCHECK ADD  CONSTRAINT [FK_mcotherclaim_mc] FOREIGN KEY([mcsettlementid])
REFERENCES [mcsettlement] ([objid])
GO
ALTER TABLE [mcsettlement_otherclaim] NOCHECK CONSTRAINT [FK_mcotherclaim_mc]
GO
ALTER TABLE [miscassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_miscassesslevel_classification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [miscassesslevel] NOCHECK CONSTRAINT [FK_miscassesslevel_classification]
GO
ALTER TABLE [miscassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_miscassesslevel_miscrysetting] FOREIGN KEY([miscrysettingid])
REFERENCES [miscrysetting] ([objid])
GO
ALTER TABLE [miscassesslevel] NOCHECK CONSTRAINT [FK_miscassesslevel_miscrysetting]
GO
ALTER TABLE [miscassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_miscassesslevelrange_miscassesslevel] FOREIGN KEY([miscassesslevelid])
REFERENCES [miscassesslevel] ([objid])
GO
ALTER TABLE [miscassesslevelrange] NOCHECK CONSTRAINT [FK_miscassesslevelrange_miscassesslevel]
GO
ALTER TABLE [miscassesslevelrange]  WITH NOCHECK ADD  CONSTRAINT [FK_miscassesslevelrange_miscrysetting] FOREIGN KEY([miscrysettingid])
REFERENCES [miscrysetting] ([objid])
GO
ALTER TABLE [miscassesslevelrange] NOCHECK CONSTRAINT [FK_miscassesslevelrange_miscrysetting]
GO
ALTER TABLE [miscitemvalue]  WITH NOCHECK ADD  CONSTRAINT [FK_miscitemvalue_miscitem] FOREIGN KEY([miscitem_objid])
REFERENCES [miscitem] ([objid])
GO
ALTER TABLE [miscitemvalue] NOCHECK CONSTRAINT [FK_miscitemvalue_miscitem]
GO
ALTER TABLE [miscitemvalue]  WITH NOCHECK ADD  CONSTRAINT [FK_miscitemvalue_miscrysetting] FOREIGN KEY([miscrysettingid])
REFERENCES [miscrysetting] ([objid])
GO
ALTER TABLE [miscitemvalue] NOCHECK CONSTRAINT [FK_miscitemvalue_miscrysetting]
GO
ALTER TABLE [miscrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpu_miscassesslevel] FOREIGN KEY([actualuse_objid])
REFERENCES [miscassesslevel] ([objid])
GO
ALTER TABLE [miscrpu] NOCHECK CONSTRAINT [FK_miscrpu_miscassesslevel]
GO
ALTER TABLE [miscrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpu_rpu] FOREIGN KEY([objid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [miscrpu] NOCHECK CONSTRAINT [FK_miscrpu_rpu]
GO
ALTER TABLE [miscrpuitem]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpuitem_miscitem] FOREIGN KEY([miscitem_objid])
REFERENCES [miscitem] ([objid])
GO
ALTER TABLE [miscrpuitem] NOCHECK CONSTRAINT [FK_miscrpuitem_miscitem]
GO
ALTER TABLE [miscrpuitem]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpuitem_miscitemvalue] FOREIGN KEY([miv_objid])
REFERENCES [miscitemvalue] ([objid])
GO
ALTER TABLE [miscrpuitem] NOCHECK CONSTRAINT [FK_miscrpuitem_miscitemvalue]
GO
ALTER TABLE [miscrpuitem]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpuitem_miscrpu] FOREIGN KEY([miscrpuid])
REFERENCES [miscrpu] ([objid])
GO
ALTER TABLE [miscrpuitem] NOCHECK CONSTRAINT [FK_miscrpuitem_miscrpu]
GO
ALTER TABLE [miscrpuitem_rptparameter]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpuitem_rptparameter_] FOREIGN KEY([miscrpuid])
REFERENCES [miscrpu] ([objid])
GO
ALTER TABLE [miscrpuitem_rptparameter] NOCHECK CONSTRAINT [FK_miscrpuitem_rptparameter_]
GO
ALTER TABLE [miscrpuitem_rptparameter]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpuitem_rptparameter_miscrpuitem] FOREIGN KEY([miscrpuitemid])
REFERENCES [miscrpuitem] ([objid])
GO
ALTER TABLE [miscrpuitem_rptparameter] NOCHECK CONSTRAINT [FK_miscrpuitem_rptparameter_miscrpuitem]
GO
ALTER TABLE [miscrpuitem_rptparameter]  WITH NOCHECK ADD  CONSTRAINT [FK_miscrpuitem_rptparameter_rptparamer] FOREIGN KEY([param_objid])
REFERENCES [rptparameter] ([objid])
GO
ALTER TABLE [miscrpuitem_rptparameter] NOCHECK CONSTRAINT [FK_miscrpuitem_rptparameter_rptparamer]
GO
ALTER TABLE [ngas_revenue_deposit]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenuedeposit_deposit] FOREIGN KEY([objid])
REFERENCES [bankdeposit] ([objid])
GO
ALTER TABLE [ngas_revenue_deposit] NOCHECK CONSTRAINT [FK_ngasrevenuedeposit_deposit]
GO
ALTER TABLE [ngas_revenue_deposit]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenuedeposit_ngasrevenue] FOREIGN KEY([parentid])
REFERENCES [ngas_revenue] ([objid])
GO
ALTER TABLE [ngas_revenue_deposit] NOCHECK CONSTRAINT [FK_ngasrevenuedeposit_ngasrevenue]
GO
ALTER TABLE [ngas_revenue_remittance]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenueremittance_ngasrevenue] FOREIGN KEY([parentid])
REFERENCES [ngas_revenue] ([objid])
GO
ALTER TABLE [ngas_revenue_remittance] NOCHECK CONSTRAINT [FK_ngasrevenueremittance_ngasrevenue]
GO
ALTER TABLE [ngas_revenueitem]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenueitem_colltype] FOREIGN KEY([collectiontype_objid])
REFERENCES [collectiontype] ([objid])
GO
ALTER TABLE [ngas_revenueitem] NOCHECK CONSTRAINT [FK_ngasrevenueitem_colltype]
GO
ALTER TABLE [ngas_revenueitem]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenueitem_deposit] FOREIGN KEY([depositid])
REFERENCES [bankdeposit] ([objid])
GO
ALTER TABLE [ngas_revenueitem] NOCHECK CONSTRAINT [FK_ngasrevenueitem_deposit]
GO
ALTER TABLE [ngas_revenueitem]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenueitem_fund] FOREIGN KEY([fund_objid])
REFERENCES [fund] ([objid])
GO
ALTER TABLE [ngas_revenueitem] NOCHECK CONSTRAINT [FK_ngasrevenueitem_fund]
GO
ALTER TABLE [ngas_revenueitem]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenueitem_liquidation] FOREIGN KEY([liquidationid])
REFERENCES [liquidation] ([objid])
GO
ALTER TABLE [ngas_revenueitem] NOCHECK CONSTRAINT [FK_ngasrevenueitem_liquidation]
GO
ALTER TABLE [ngas_revenueitem]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenueitem_ngasrevenue] FOREIGN KEY([parentid])
REFERENCES [ngas_revenue] ([objid])
GO
ALTER TABLE [ngas_revenueitem] NOCHECK CONSTRAINT [FK_ngasrevenueitem_ngasrevenue]
GO
ALTER TABLE [ngas_revenueitem]  WITH NOCHECK ADD  CONSTRAINT [FK_ngasrevenueitem_revitem] FOREIGN KEY([item_objid])
REFERENCES [revenueitem] ([objid])
GO
ALTER TABLE [ngas_revenueitem] NOCHECK CONSTRAINT [FK_ngasrevenueitem_revitem]
GO
ALTER TABLE [pin]  WITH NOCHECK ADD  CONSTRAINT [FK_pin_barangay] FOREIGN KEY([barangayid])
REFERENCES [barangay] ([objid])
GO
ALTER TABLE [pin] NOCHECK CONSTRAINT [FK_pin_barangay]
GO
ALTER TABLE [planttreeassesslevel]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreeassesslevel_planttreerysetting] FOREIGN KEY([planttreerysettingid])
REFERENCES [planttreerysetting] ([objid])
GO
ALTER TABLE [planttreeassesslevel] NOCHECK CONSTRAINT [FK_planttreeassesslevel_planttreerysetting]
GO
ALTER TABLE [planttreedetail]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreedetail_landrpu] FOREIGN KEY([landrpuid])
REFERENCES [landrpu] ([objid])
GO
ALTER TABLE [planttreedetail] NOCHECK CONSTRAINT [FK_planttreedetail_landrpu]
GO
ALTER TABLE [planttreedetail]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreedetail_plantreeassesslevel] FOREIGN KEY([actualuse_objid])
REFERENCES [planttreeassesslevel] ([objid])
GO
ALTER TABLE [planttreedetail] NOCHECK CONSTRAINT [FK_planttreedetail_plantreeassesslevel]
GO
ALTER TABLE [planttreedetail]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreedetail_planttree] FOREIGN KEY([planttree_objid])
REFERENCES [planttree] ([objid])
GO
ALTER TABLE [planttreedetail] NOCHECK CONSTRAINT [FK_planttreedetail_planttree]
GO
ALTER TABLE [planttreedetail]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreedetail_planttreerpu] FOREIGN KEY([planttreerpuid])
REFERENCES [planttreerpu] ([objid])
GO
ALTER TABLE [planttreedetail] NOCHECK CONSTRAINT [FK_planttreedetail_planttreerpu]
GO
ALTER TABLE [planttreedetail]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreedetail_planttreeunitvalue] FOREIGN KEY([planttreeunitvalue_objid])
REFERENCES [planttreeunitvalue] ([objid])
GO
ALTER TABLE [planttreedetail] NOCHECK CONSTRAINT [FK_planttreedetail_planttreeunitvalue]
GO
ALTER TABLE [planttreerpu]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreerpu_landrpu] FOREIGN KEY([landrpuid])
REFERENCES [landrpu] ([objid])
GO
ALTER TABLE [planttreerpu] NOCHECK CONSTRAINT [FK_planttreerpu_landrpu]
GO
ALTER TABLE [planttreerpu]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreerpu_rpu] FOREIGN KEY([objid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [planttreerpu] NOCHECK CONSTRAINT [FK_planttreerpu_rpu]
GO
ALTER TABLE [planttreerysetting]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreerysetting_planttreerysetting] FOREIGN KEY([previd])
REFERENCES [planttreerysetting] ([objid])
GO
ALTER TABLE [planttreerysetting] NOCHECK CONSTRAINT [FK_planttreerysetting_planttreerysetting]
GO
ALTER TABLE [planttreeunitvalue]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreeunitvalue_planttree] FOREIGN KEY([planttree_objid])
REFERENCES [planttree] ([objid])
GO
ALTER TABLE [planttreeunitvalue] NOCHECK CONSTRAINT [FK_planttreeunitvalue_planttree]
GO
ALTER TABLE [planttreeunitvalue]  WITH NOCHECK ADD  CONSTRAINT [FK_planttreeunitvalue_planttreerysetting] FOREIGN KEY([planttreerysettingid])
REFERENCES [planttreerysetting] ([objid])
GO
ALTER TABLE [planttreeunitvalue] NOCHECK CONSTRAINT [FK_planttreeunitvalue_planttreerysetting]
GO
ALTER TABLE [previousfaas]  WITH NOCHECK ADD  CONSTRAINT [FK_previousfaas_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [previousfaas] NOCHECK CONSTRAINT [FK_previousfaas_faas]
GO
ALTER TABLE [previousfaas]  WITH NOCHECK ADD  CONSTRAINT [FK_previousfaas_prevfaas] FOREIGN KEY([prevfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [previousfaas] NOCHECK CONSTRAINT [FK_previousfaas_prevfaas]
GO
ALTER TABLE [realproperty]  WITH NOCHECK ADD  CONSTRAINT [FK_realproperty_barangay] FOREIGN KEY([barangayid])
REFERENCES [barangay] ([objid])
GO
ALTER TABLE [realproperty] NOCHECK CONSTRAINT [FK_realproperty_barangay]
GO
ALTER TABLE [remittance_afserial]  WITH NOCHECK ADD  CONSTRAINT [FK_remittance_afserial_inventory] FOREIGN KEY([objid])
REFERENCES [afserial_inventory_detail] ([objid])
GO
ALTER TABLE [remittance_afserial] NOCHECK CONSTRAINT [FK_remittance_afserial_inventory]
GO
ALTER TABLE [remittance_afserial]  WITH NOCHECK ADD  CONSTRAINT [FK_remittance_afserial_remittance] FOREIGN KEY([remittanceid])
REFERENCES [remittance] ([objid])
GO
ALTER TABLE [remittance_afserial] NOCHECK CONSTRAINT [FK_remittance_afserial_remittance]
GO
ALTER TABLE [remittance_cashreceipt]  WITH NOCHECK ADD  CONSTRAINT [FK_remittance_cashreceipt_cashreceipt] FOREIGN KEY([objid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [remittance_cashreceipt] NOCHECK CONSTRAINT [FK_remittance_cashreceipt_cashreceipt]
GO
ALTER TABLE [remittance_cashreceipt]  WITH NOCHECK ADD  CONSTRAINT [FK_remittance_cashreceipt_remittance] FOREIGN KEY([remittanceid])
REFERENCES [remittance] ([objid])
GO
ALTER TABLE [remittance_cashreceipt] NOCHECK CONSTRAINT [FK_remittance_cashreceipt_remittance]
GO
ALTER TABLE [remittance_cashticket]  WITH NOCHECK ADD  CONSTRAINT [FK_remittance_cashticket_inventory] FOREIGN KEY([objid])
REFERENCES [cashticket_inventory_detail] ([objid])
GO
ALTER TABLE [remittance_cashticket] NOCHECK CONSTRAINT [FK_remittance_cashticket_inventory]
GO
ALTER TABLE [remittance_checkpayment]  WITH NOCHECK ADD  CONSTRAINT [FK_remittance_checkpayment_remittance] FOREIGN KEY([remittanceid])
REFERENCES [remittance] ([objid])
GO
ALTER TABLE [remittance_checkpayment] NOCHECK CONSTRAINT [FK_remittance_checkpayment_remittance]
GO
ALTER TABLE [remittance_fund]  WITH NOCHECK ADD  CONSTRAINT [FK_remittance_fund] FOREIGN KEY([remittanceid])
REFERENCES [remittance] ([objid])
GO
ALTER TABLE [remittance_fund] NOCHECK CONSTRAINT [FK_remittance_fund]
GO
ALTER TABLE [resectionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_newfaas] FOREIGN KEY([newfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [resectionaffectedrpu] NOCHECK CONSTRAINT [FK_resectionaffectedrpu_newfaas]
GO
ALTER TABLE [resectionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_newrp] FOREIGN KEY([newrpid])
REFERENCES [realproperty] ([objid])
GO
ALTER TABLE [resectionaffectedrpu] NOCHECK CONSTRAINT [FK_resectionaffectedrpu_newrp]
GO
ALTER TABLE [resectionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_newrpu] FOREIGN KEY([newrpuid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [resectionaffectedrpu] NOCHECK CONSTRAINT [FK_resectionaffectedrpu_newrpu]
GO
ALTER TABLE [resectionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_prevfaas] FOREIGN KEY([prevfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [resectionaffectedrpu] NOCHECK CONSTRAINT [FK_resectionaffectedrpu_prevfaas]
GO
ALTER TABLE [resectionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_prevrp] FOREIGN KEY([prevrpid])
REFERENCES [realproperty] ([objid])
GO
ALTER TABLE [resectionaffectedrpu] NOCHECK CONSTRAINT [FK_resectionaffectedrpu_prevrp]
GO
ALTER TABLE [resectionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_prevrpu] FOREIGN KEY([prevrpuid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [resectionaffectedrpu] NOCHECK CONSTRAINT [FK_resectionaffectedrpu_prevrpu]
GO
ALTER TABLE [resectionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_resection] FOREIGN KEY([resectionid])
REFERENCES [resection] ([objid])
GO
ALTER TABLE [resectionaffectedrpu] NOCHECK CONSTRAINT [FK_resectionaffectedrpu_resection]
GO
ALTER TABLE [resectionitem]  WITH NOCHECK ADD  CONSTRAINT [FK_resectionitem_resection] FOREIGN KEY([resectionid])
REFERENCES [resection] ([objid])
GO
ALTER TABLE [resectionitem] NOCHECK CONSTRAINT [FK_resectionitem_resection]
GO
ALTER TABLE [revenueitem_attribute]  WITH NOCHECK ADD  CONSTRAINT [FX_revenueitem_attribute_objid] FOREIGN KEY([attribute_objid])
REFERENCES [revenueitem_attribute_type] ([objid])
GO
ALTER TABLE [revenueitem_attribute] NOCHECK CONSTRAINT [FX_revenueitem_attribute_objid]
GO
ALTER TABLE [revenueitem_attribute]  WITH NOCHECK ADD  CONSTRAINT [FX_revenueitem_attribute_revenueitemitem] FOREIGN KEY([revitemid])
REFERENCES [revenueitem] ([objid])
GO
ALTER TABLE [revenueitem_attribute] NOCHECK CONSTRAINT [FX_revenueitem_attribute_revenueitemitem]
GO
ALTER TABLE [rpt_requirement]  WITH NOCHECK ADD  CONSTRAINT [FK_rptrequirement_rptrequirementtype] FOREIGN KEY([requirementtypeid])
REFERENCES [rpt_requirement_type] ([objid])
GO
ALTER TABLE [rpt_requirement] NOCHECK CONSTRAINT [FK_rptrequirement_rptrequirementtype]
GO
ALTER TABLE [rpt_sales_data]  WITH NOCHECK ADD  CONSTRAINT [FK_faas_sales_data] FOREIGN KEY([objid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [rpt_sales_data] NOCHECK CONSTRAINT [FK_faas_sales_data]
GO
ALTER TABLE [rptbill_ledger]  WITH NOCHECK ADD  CONSTRAINT [FK_rptbillledger_rptbill] FOREIGN KEY([rptbillid])
REFERENCES [rptbill] ([objid])
GO
ALTER TABLE [rptbill_ledger] NOCHECK CONSTRAINT [FK_rptbillledger_rptbill]
GO
ALTER TABLE [rptcertification]  WITH NOCHECK ADD  CONSTRAINT [FK_rptcertification_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [rptcertification] NOCHECK CONSTRAINT [FK_rptcertification_faas]
GO
ALTER TABLE [rptcertificationitem]  WITH NOCHECK ADD  CONSTRAINT [FK_rptcertificationitem_rptcertification] FOREIGN KEY([rptcertificationid])
REFERENCES [rptcertification] ([objid])
GO
ALTER TABLE [rptcertificationitem] NOCHECK CONSTRAINT [FK_rptcertificationitem_rptcertification]
GO
ALTER TABLE [rptledger]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledger_barangay] FOREIGN KEY([barangayid])
REFERENCES [barangay] ([objid])
GO
ALTER TABLE [rptledger] NOCHECK CONSTRAINT [FK_rptledger_barangay]
GO
ALTER TABLE [rptledger]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledger_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [rptledger] NOCHECK CONSTRAINT [FK_rptledger_faas]
GO
ALTER TABLE [rptledgerbillitem]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledgerbillitem_rptledger] FOREIGN KEY([rptledgerid])
REFERENCES [rptledger] ([objid])
GO
ALTER TABLE [rptledgerbillitem] NOCHECK CONSTRAINT [FK_rptledgerbillitem_rptledger]
GO
ALTER TABLE [rptledgerbillitem]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledgerbillitem_rptledgerfaas] FOREIGN KEY([rptledgerfaasid])
REFERENCES [rptledgerfaas] ([objid])
GO
ALTER TABLE [rptledgerbillitem] NOCHECK CONSTRAINT [FK_rptledgerbillitem_rptledgerfaas]
GO
ALTER TABLE [rptledgerfaas]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledgerfaas_faas] FOREIGN KEY([faasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [rptledgerfaas] NOCHECK CONSTRAINT [FK_rptledgerfaas_faas]
GO
ALTER TABLE [rptledgerfaas]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledgerfaas_rptledger] FOREIGN KEY([rptledgerid])
REFERENCES [rptledger] ([objid])
GO
ALTER TABLE [rptledgerfaas] NOCHECK CONSTRAINT [FK_rptledgerfaas_rptledger]
GO
ALTER TABLE [rptledgeritem]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledgeritem_rptledger] FOREIGN KEY([rptledgerid])
REFERENCES [rptledger] ([objid])
GO
ALTER TABLE [rptledgeritem] NOCHECK CONSTRAINT [FK_rptledgeritem_rptledger]
GO
ALTER TABLE [rptledgeritem]  WITH NOCHECK ADD  CONSTRAINT [FK_rptledgeritem_rptledgerfaas] FOREIGN KEY([rptledgerfaasid])
REFERENCES [rptledgerfaas] ([objid])
GO
ALTER TABLE [rptledgeritem] NOCHECK CONSTRAINT [FK_rptledgeritem_rptledgerfaas]
GO
ALTER TABLE [rptledgeritem_qtrly]  WITH NOCHECK ADD  CONSTRAINT [FK_ledgeritemqtrly_ledger] FOREIGN KEY([rptledgerid])
REFERENCES [rptledger] ([objid])
GO
ALTER TABLE [rptledgeritem_qtrly] NOCHECK CONSTRAINT [FK_ledgeritemqtrly_ledger]
GO
ALTER TABLE [rptledgeritem_qtrly]  WITH NOCHECK ADD  CONSTRAINT [FK_ledgeritemqtrly_ledgeritem] FOREIGN KEY([rptledgeritemid])
REFERENCES [rptledgeritem] ([objid])
GO
ALTER TABLE [rptledgeritem_qtrly] NOCHECK CONSTRAINT [FK_ledgeritemqtrly_ledgeritem]
GO
ALTER TABLE [rpttaxclearance]  WITH NOCHECK ADD  CONSTRAINT [FK_rpttaxclearance_rptcertification] FOREIGN KEY([objid])
REFERENCES [rptcertification] ([objid])
GO
ALTER TABLE [rpttaxclearance] NOCHECK CONSTRAINT [FK_rpttaxclearance_rptcertification]
GO
ALTER TABLE [rpttaxincentive_item]  WITH NOCHECK ADD  CONSTRAINT [FK_rpttaxincentiveitem_rptledger] FOREIGN KEY([rptledgerid])
REFERENCES [rptledger] ([objid])
GO
ALTER TABLE [rpttaxincentive_item] NOCHECK CONSTRAINT [FK_rpttaxincentiveitem_rptledger]
GO
ALTER TABLE [rpttaxincentive_item]  WITH NOCHECK ADD  CONSTRAINT [FK_rpttaxincentiveitem_rpttaxincentive] FOREIGN KEY([rpttaxincentiveid])
REFERENCES [rpttaxincentive] ([objid])
GO
ALTER TABLE [rpttaxincentive_item] NOCHECK CONSTRAINT [FK_rpttaxincentiveitem_rpttaxincentive]
GO
ALTER TABLE [rpu]  WITH NOCHECK ADD  CONSTRAINT [FK_rpu_exemptiontype] FOREIGN KEY([exemptiontype_objid])
REFERENCES [exemptiontype] ([objid])
GO
ALTER TABLE [rpu] NOCHECK CONSTRAINT [FK_rpu_exemptiontype]
GO
ALTER TABLE [rpu]  WITH NOCHECK ADD  CONSTRAINT [FK_rpu_propertyclassification] FOREIGN KEY([classification_objid])
REFERENCES [propertyclassification] ([objid])
GO
ALTER TABLE [rpu] NOCHECK CONSTRAINT [FK_rpu_propertyclassification]
GO
ALTER TABLE [rpu]  WITH NOCHECK ADD  CONSTRAINT [FK_rpu_realpropertyid] FOREIGN KEY([realpropertyid])
REFERENCES [realproperty] ([objid])
GO
ALTER TABLE [rpu] NOCHECK CONSTRAINT [FK_rpu_realpropertyid]
GO
ALTER TABLE [rpu]  WITH NOCHECK ADD  CONSTRAINT [FK_rpu_rpumaster] FOREIGN KEY([rpumasterid])
REFERENCES [rpumaster] ([objid])
GO
ALTER TABLE [rpu] NOCHECK CONSTRAINT [FK_rpu_rpumaster]
GO
ALTER TABLE [specialaccountsetting]  WITH NOCHECK ADD  CONSTRAINT [FK_specialaccountsetting_collectiontype] FOREIGN KEY([collectiontypeid])
REFERENCES [collectiontype] ([objid])
GO
ALTER TABLE [specialaccountsetting] NOCHECK CONSTRAINT [FK_specialaccountsetting_collectiontype]
GO
ALTER TABLE [stockissue]  WITH NOCHECK ADD  CONSTRAINT [FK_stockissue_request] FOREIGN KEY([request_objid])
REFERENCES [stockrequest] ([objid])
GO
ALTER TABLE [stockissue] NOCHECK CONSTRAINT [FK_stockissue_request]
GO
ALTER TABLE [stockissueitem]  WITH NOCHECK ADD  CONSTRAINT [FK_stockissueitem_stockissue] FOREIGN KEY([parentid])
REFERENCES [stockissue] ([objid])
GO
ALTER TABLE [stockissueitem] NOCHECK CONSTRAINT [FK_stockissueitem_stockissue]
GO
ALTER TABLE [stockitem_unit]  WITH NOCHECK ADD  CONSTRAINT [FK_stockitem_unit_stockitem] FOREIGN KEY([itemid])
REFERENCES [stockitem] ([objid])
GO
ALTER TABLE [stockitem_unit] NOCHECK CONSTRAINT [FK_stockitem_unit_stockitem]
GO
ALTER TABLE [stockreceipt]  WITH NOCHECK ADD  CONSTRAINT [FK_stockreceipt_request] FOREIGN KEY([request_objid])
REFERENCES [stockrequest] ([objid])
GO
ALTER TABLE [stockreceipt] NOCHECK CONSTRAINT [FK_stockreceipt_request]
GO
ALTER TABLE [stockreceiptitem]  WITH NOCHECK ADD  CONSTRAINT [FK_stockreceiptitem_stockreceipt] FOREIGN KEY([parentid])
REFERENCES [stockreceipt] ([objid])
GO
ALTER TABLE [stockreceiptitem] NOCHECK CONSTRAINT [FK_stockreceiptitem_stockreceipt]
GO
ALTER TABLE [structurematerial]  WITH NOCHECK ADD  CONSTRAINT [FK_structurematerial_material] FOREIGN KEY([material_objid])
REFERENCES [material] ([objid])
GO
ALTER TABLE [structurematerial] NOCHECK CONSTRAINT [FK_structurematerial_material]
GO
ALTER TABLE [structurematerial]  WITH NOCHECK ADD  CONSTRAINT [FK_structurematerial_strucutre] FOREIGN KEY([structure_objid])
REFERENCES [structure] ([objid])
GO
ALTER TABLE [structurematerial] NOCHECK CONSTRAINT [FK_structurematerial_strucutre]
GO
ALTER TABLE [subcollector_remittance_cashreceipt]  WITH NOCHECK ADD  CONSTRAINT [FK_subcollector_remittance_cashreceipt_cashreceipt] FOREIGN KEY([objid])
REFERENCES [cashreceipt] ([objid])
GO
ALTER TABLE [subcollector_remittance_cashreceipt] NOCHECK CONSTRAINT [FK_subcollector_remittance_cashreceipt_cashreceipt]
GO
ALTER TABLE [subcollector_remittance_cashreceipt]  WITH NOCHECK ADD  CONSTRAINT [FK_subcollector_remittance_cashreceipt_remittance] FOREIGN KEY([remittanceid])
REFERENCES [subcollector_remittance] ([objid])
GO
ALTER TABLE [subcollector_remittance_cashreceipt] NOCHECK CONSTRAINT [FK_subcollector_remittance_cashreceipt_remittance]
GO
ALTER TABLE [subdividedland]  WITH NOCHECK ADD  CONSTRAINT [FK_subdividedland_faas] FOREIGN KEY([newfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [subdividedland] NOCHECK CONSTRAINT [FK_subdividedland_faas]
GO
ALTER TABLE [subdividedland]  WITH NOCHECK ADD  CONSTRAINT [FK_subdividedland_newrp] FOREIGN KEY([newrpid])
REFERENCES [realproperty] ([objid])
GO
ALTER TABLE [subdividedland] NOCHECK CONSTRAINT [FK_subdividedland_newrp]
GO
ALTER TABLE [subdividedland]  WITH NOCHECK ADD  CONSTRAINT [FK_subdividedland_newrpu] FOREIGN KEY([newrpuid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [subdividedland] NOCHECK CONSTRAINT [FK_subdividedland_newrpu]
GO
ALTER TABLE [subdividedland]  WITH NOCHECK ADD  CONSTRAINT [FK_subdividedland_subdivision] FOREIGN KEY([subdivisionid])
REFERENCES [subdivision] ([objid])
GO
ALTER TABLE [subdividedland] NOCHECK CONSTRAINT [FK_subdividedland_subdivision]
GO
ALTER TABLE [subdivision]  WITH NOCHECK ADD  CONSTRAINT [FK_subdivision_faas] FOREIGN KEY([motherfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [subdivision] NOCHECK CONSTRAINT [FK_subdivision_faas]
GO
ALTER TABLE [subdivisionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_subdivisionaffectedpru_newfaas] FOREIGN KEY([newfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [subdivisionaffectedrpu] NOCHECK CONSTRAINT [FK_subdivisionaffectedpru_newfaas]
GO
ALTER TABLE [subdivisionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_subdivisionaffectedpru_newrpu] FOREIGN KEY([newrpuid])
REFERENCES [rpu] ([objid])
GO
ALTER TABLE [subdivisionaffectedrpu] NOCHECK CONSTRAINT [FK_subdivisionaffectedpru_newrpu]
GO
ALTER TABLE [subdivisionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_subdivisionaffectedpru_prevfaas] FOREIGN KEY([prevfaasid])
REFERENCES [faas] ([objid])
GO
ALTER TABLE [subdivisionaffectedrpu] NOCHECK CONSTRAINT [FK_subdivisionaffectedpru_prevfaas]
GO
ALTER TABLE [subdivisionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_subdivisionaffectedpru_subdividedland] FOREIGN KEY([subdividedlandid])
REFERENCES [subdividedland] ([objid])
GO
ALTER TABLE [subdivisionaffectedrpu] NOCHECK CONSTRAINT [FK_subdivisionaffectedpru_subdividedland]
GO
ALTER TABLE [subdivisionaffectedrpu]  WITH NOCHECK ADD  CONSTRAINT [FK_subdivisionaffectedpru_subdivision] FOREIGN KEY([subdivisionid])
REFERENCES [subdivision] ([objid])
GO
ALTER TABLE [subdivisionaffectedrpu] NOCHECK CONSTRAINT [FK_subdivisionaffectedpru_subdivision]
GO
ALTER TABLE [sys_org]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_org] FOREIGN KEY([parent_orgclass])
REFERENCES [sys_orgclass] ([name])
GO
ALTER TABLE [sys_org] NOCHECK CONSTRAINT [FK_sys_org]
GO
ALTER TABLE [sys_org]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_org_orgclass] FOREIGN KEY([orgclass])
REFERENCES [sys_orgclass] ([name])
GO
ALTER TABLE [sys_org] NOCHECK CONSTRAINT [FK_sys_org_orgclass]
GO
ALTER TABLE [sys_report]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_report_dataset] FOREIGN KEY([datasetid])
REFERENCES [sys_dataset] ([objid])
GO
ALTER TABLE [sys_report] NOCHECK CONSTRAINT [FK_sys_report_dataset]
GO
ALTER TABLE [sys_report]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_report_entry_folder] FOREIGN KEY([reportfolderid])
REFERENCES [sys_report_folder] ([objid])
GO
ALTER TABLE [sys_report] NOCHECK CONSTRAINT [FK_sys_report_entry_folder]
GO
ALTER TABLE [sys_report_admin]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_report_admin_folder] FOREIGN KEY([reportfolderid])
REFERENCES [sys_report_folder] ([objid])
GO
ALTER TABLE [sys_report_admin] NOCHECK CONSTRAINT [FK_sys_report_admin_folder]
GO
ALTER TABLE [sys_report_admin]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_report_admin_user] FOREIGN KEY([userid])
REFERENCES [sys_user] ([objid])
GO
ALTER TABLE [sys_report_admin] NOCHECK CONSTRAINT [FK_sys_report_admin_user]
GO
ALTER TABLE [sys_report_member]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_report_member_folder] FOREIGN KEY([reportfolderid])
REFERENCES [sys_report_folder] ([objid])
GO
ALTER TABLE [sys_report_member] NOCHECK CONSTRAINT [FK_sys_report_member_folder]
GO
ALTER TABLE [sys_report_member]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_report_member_user] FOREIGN KEY([userid])
REFERENCES [sys_user] ([objid])
GO
ALTER TABLE [sys_report_member] NOCHECK CONSTRAINT [FK_sys_report_member_user]
GO
ALTER TABLE [sys_report_member]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_report_member_usergroup] FOREIGN KEY([usergroupid])
REFERENCES [sys_usergroup] ([objid])
GO
ALTER TABLE [sys_report_member] NOCHECK CONSTRAINT [FK_sys_report_member_usergroup]
GO
ALTER TABLE [sys_rule]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_rulegroup] FOREIGN KEY([rulegroup], [ruleset])
REFERENCES [sys_rulegroup] ([name], [ruleset])
GO
ALTER TABLE [sys_rule] NOCHECK CONSTRAINT [FK_sys_rule_rulegroup]
GO
ALTER TABLE [sys_rule]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_ruleset] FOREIGN KEY([ruleset])
REFERENCES [sys_ruleset] ([name])
GO
ALTER TABLE [sys_rule] NOCHECK CONSTRAINT [FK_sys_rule_ruleset]
GO
ALTER TABLE [sys_rule_action]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_action_rule] FOREIGN KEY([parentid])
REFERENCES [sys_rule] ([objid])
GO
ALTER TABLE [sys_rule_action] NOCHECK CONSTRAINT [FK_sys_rule_action_rule]
GO
ALTER TABLE [sys_rule_action_param]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_action_param_action] FOREIGN KEY([parentid])
REFERENCES [sys_rule_action] ([objid])
GO
ALTER TABLE [sys_rule_action_param] NOCHECK CONSTRAINT [FK_sys_rule_action_param_action]
GO
ALTER TABLE [sys_rule_action_param]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_action_param_var] FOREIGN KEY([var_objid])
REFERENCES [sys_rule_condition_var] ([objid])
GO
ALTER TABLE [sys_rule_action_param] NOCHECK CONSTRAINT [FK_sys_rule_action_param_var]
GO
ALTER TABLE [sys_rule_actiondef_param]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_actiondef_param_actiondef] FOREIGN KEY([parentid])
REFERENCES [sys_rule_actiondef] ([objid])
GO
ALTER TABLE [sys_rule_actiondef_param] NOCHECK CONSTRAINT [FK_sys_rule_actiondef_param_actiondef]
GO
ALTER TABLE [sys_rule_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_condition_fact] FOREIGN KEY([fact_objid])
REFERENCES [sys_rule_fact] ([objid])
GO
ALTER TABLE [sys_rule_condition] NOCHECK CONSTRAINT [FK_sys_rule_condition_fact]
GO
ALTER TABLE [sys_rule_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_condition_rule] FOREIGN KEY([parentid])
REFERENCES [sys_rule] ([objid])
GO
ALTER TABLE [sys_rule_condition] NOCHECK CONSTRAINT [FK_sys_rule_condition_rule]
GO
ALTER TABLE [sys_rule_condition_constraint]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_condition_constraint_condition] FOREIGN KEY([parentid])
REFERENCES [sys_rule_condition] ([objid])
GO
ALTER TABLE [sys_rule_condition_constraint] NOCHECK CONSTRAINT [FK_sys_rule_condition_constraint_condition]
GO
ALTER TABLE [sys_rule_condition_constraint]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_condition_constraint_var] FOREIGN KEY([var_objid])
REFERENCES [sys_rule_condition_var] ([objid])
GO
ALTER TABLE [sys_rule_condition_constraint] NOCHECK CONSTRAINT [FK_sys_rule_condition_constraint_var]
GO
ALTER TABLE [sys_rule_condition_var]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_condition_var_condition] FOREIGN KEY([parentid])
REFERENCES [sys_rule_condition] ([objid])
GO
ALTER TABLE [sys_rule_condition_var] NOCHECK CONSTRAINT [FK_sys_rule_condition_var_condition]
GO
ALTER TABLE [sys_rule_deployed]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_deployed_rule] FOREIGN KEY([objid])
REFERENCES [sys_rule] ([objid])
GO
ALTER TABLE [sys_rule_deployed] NOCHECK CONSTRAINT [FK_sys_rule_deployed_rule]
GO
ALTER TABLE [sys_rule_fact_field]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_rule_fact_field_fact] FOREIGN KEY([parentid])
REFERENCES [sys_rule_fact] ([objid])
GO
ALTER TABLE [sys_rule_fact_field] NOCHECK CONSTRAINT [FK_sys_rule_fact_field_fact]
GO
ALTER TABLE [sys_rulegroup]  WITH NOCHECK ADD  CONSTRAINT [fk_sysrulegroup_ruleset_sysruleset_name] FOREIGN KEY([ruleset])
REFERENCES [sys_ruleset] ([name])
GO
ALTER TABLE [sys_rulegroup] NOCHECK CONSTRAINT [fk_sysrulegroup_ruleset_sysruleset_name]
GO
ALTER TABLE [sys_ruleset_actiondef]  WITH NOCHECK ADD  CONSTRAINT [fk_rulesetactiondef_actiondef] FOREIGN KEY([actiondef])
REFERENCES [sys_rule_actiondef] ([objid])
GO
ALTER TABLE [sys_ruleset_actiondef] NOCHECK CONSTRAINT [fk_rulesetactiondef_actiondef]
GO
ALTER TABLE [sys_ruleset_actiondef]  WITH NOCHECK ADD  CONSTRAINT [fk_rulesetactiondef_ruleset] FOREIGN KEY([ruleset])
REFERENCES [sys_ruleset] ([name])
GO
ALTER TABLE [sys_ruleset_actiondef] NOCHECK CONSTRAINT [fk_rulesetactiondef_ruleset]
GO
ALTER TABLE [sys_ruleset_fact]  WITH NOCHECK ADD  CONSTRAINT [fk_rulesetfact_rulefact] FOREIGN KEY([rulefact])
REFERENCES [sys_rule_fact] ([objid])
GO
ALTER TABLE [sys_ruleset_fact] NOCHECK CONSTRAINT [fk_rulesetfact_rulefact]
GO
ALTER TABLE [sys_ruleset_fact]  WITH NOCHECK ADD  CONSTRAINT [fk_rulesetfact_ruleset] FOREIGN KEY([ruleset])
REFERENCES [sys_ruleset] ([name])
GO
ALTER TABLE [sys_ruleset_fact] NOCHECK CONSTRAINT [fk_rulesetfact_ruleset]
GO
ALTER TABLE [sys_securitygroup]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_securitygroup_usergroup] FOREIGN KEY([usergroup_objid])
REFERENCES [sys_usergroup] ([objid])
GO
ALTER TABLE [sys_securitygroup] NOCHECK CONSTRAINT [FK_sys_securitygroup_usergroup]
GO
ALTER TABLE [sys_usergroup_admin]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_usergroup_admin] FOREIGN KEY([user_objid])
REFERENCES [sys_user] ([objid])
GO
ALTER TABLE [sys_usergroup_admin] NOCHECK CONSTRAINT [FK_sys_usergroup_admin]
GO
ALTER TABLE [sys_usergroup_admin]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_usergroup_admin_usergroup] FOREIGN KEY([usergroupid])
REFERENCES [sys_usergroup] ([objid])
GO
ALTER TABLE [sys_usergroup_admin] NOCHECK CONSTRAINT [FK_sys_usergroup_admin_usergroup]
GO
ALTER TABLE [sys_usergroup_member]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_usergroup_member] FOREIGN KEY([user_objid])
REFERENCES [sys_user] ([objid])
GO
ALTER TABLE [sys_usergroup_member] NOCHECK CONSTRAINT [FK_sys_usergroup_member]
GO
ALTER TABLE [sys_usergroup_member]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_usergroup_member_org] FOREIGN KEY([org_objid])
REFERENCES [sys_org] ([objid])
GO
ALTER TABLE [sys_usergroup_member] NOCHECK CONSTRAINT [FK_sys_usergroup_member_org]
GO
ALTER TABLE [sys_usergroup_member]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_usergroup_member_securitygorup] FOREIGN KEY([securitygroup_objid])
REFERENCES [sys_securitygroup] ([objid])
GO
ALTER TABLE [sys_usergroup_member] NOCHECK CONSTRAINT [FK_sys_usergroup_member_securitygorup]
GO
ALTER TABLE [sys_usergroup_member]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_usergroup_member_usergroup] FOREIGN KEY([usergroup_objid])
REFERENCES [sys_usergroup] ([objid])
GO
ALTER TABLE [sys_usergroup_member] NOCHECK CONSTRAINT [FK_sys_usergroup_member_usergroup]
GO
ALTER TABLE [sys_usergroup_permission]  WITH NOCHECK ADD  CONSTRAINT [FK_sys_usergroup_permission_usergroup] FOREIGN KEY([usergroup_objid])
REFERENCES [sys_usergroup] ([objid])
GO
ALTER TABLE [sys_usergroup_permission] NOCHECK CONSTRAINT [FK_sys_usergroup_permission_usergroup]
GO
ALTER TABLE [sys_usergroup_permission]  WITH CHECK ADD  CONSTRAINT [FK_usergroup_permission_usergroup] FOREIGN KEY([usergroup_objid])
REFERENCES [sys_usergroup] ([objid])
GO
ALTER TABLE [sys_usergroup_permission] CHECK CONSTRAINT [FK_usergroup_permission_usergroup]
GO
