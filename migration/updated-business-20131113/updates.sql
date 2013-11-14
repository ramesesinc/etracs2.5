ALTER TABLE business ADD apptype varchar(25) DEFAULT 'NEW';
ALTER TABLE business ADD pin varchar(50);


CREATE TABLE [dbo].[business_application](
	[objid] [varchar](50) NOT NULL,
	[appno] [varchar](50) NULL,
	[apptype] [varchar](25) NULL,
	[state] [varchar](25) NULL,
	[dtfiled] [date] NULL,
	[txndate] [datetime] NULL,
	[tradename] [varchar](255) NULL,
	[branchname] [varchar](255) NULL,
	[permitee_objid] [varchar](50) NULL,
	[permitee_name] [varchar](50) NULL,
	[businessaddress] [varchar](255) NULL,
	[barangay_objid] [varchar](50) NULL,
	[barangay_name] [varchar](50) NULL,
	[orgtype] [varchar](50) NULL,
	[officetype] [varchar](50) NULL,
	[yearstarted] [int] NULL,
	[appyear] [int] NULL,
	[txnmode] [varchar](25) NULL,
	[createdby] [varchar](50) NULL,
	[businessid] [varchar](50) NULL,
 CONSTRAINT [PK_bpapplication] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [uix_bpapplication_tradename_branch] UNIQUE NONCLUSTERED 
(
	[tradename] ASC,
	[branchname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[business_application]  WITH CHECK ADD  CONSTRAINT [FK_business_application_business] FOREIGN KEY([businessid])
REFERENCES [dbo].[business] ([objid])
GO

ALTER TABLE [dbo].[business_application] CHECK CONSTRAINT [FK_business_application_business]
GO


CREATE TABLE [dbo].[business_application_requirement](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[applicationid] [varchar](50) NULL,
	[refid] [varchar](50) NULL,
	[reftype] [varchar](50) NULL,
	[refno] [varchar](50) NULL,
	[title] [varchar](50) NULL,
	[remarks] [varchar](255) NULL,
	[status] [varchar](25) NULL,
	[step] [varchar](50) NULL,
	[completedby_objid] [varchar](50) NULL,
	[dtcompleted] [datetime] NULL,
	[completedby_name] [varchar](50) NULL,
 CONSTRAINT [PK_bpapplication_requirement] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[business_application_requirement]  WITH CHECK ADD  CONSTRAINT [FK_bpapplication_requirement_bpapplication] FOREIGN KEY([refid])
REFERENCES [dbo].[businessrequirement] ([objid])
GO

ALTER TABLE [dbo].[business_application_requirement] CHECK CONSTRAINT [FK_bpapplication_requirement_bpapplication]
GO


CREATE TABLE [dbo].[business_application_requirement_data](
	[objid] [varchar](50) NOT NULL,
	[refno] [varchar](50) NULL,
	[dtissued] [date] NULL,
	[placeissued] [varchar](255) NULL,
	[issuedby] [varchar](100) NULL,
	[remarks] [varchar](255) NULL,
 CONSTRAINT [PK_bpapplication_requirement_data] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[business_application_requirement_data]  WITH CHECK ADD  CONSTRAINT [FK_bpapplication_requirement_data_bpapplication_requirement] FOREIGN KEY([objid])
REFERENCES [dbo].[business_application_requirement] ([objid])
GO

ALTER TABLE [dbo].[business_application_requirement_data] CHECK CONSTRAINT [FK_bpapplication_requirement_data_bpapplication_requirement]
GO


CREATE TABLE [dbo].[business_attribute](
	[objid] [varchar](50) NOT NULL,
	[businessid] [varchar](50) NULL,
	[attribute_objid] [varchar](50) NULL,
	[attribute_name] [varchar](50) NULL,
	[decimalvalue] [decimal](16, 2) NULL,
	[intvalue] [int] NULL,
	[stringvalue] [varchar](255) NULL,
	[boolvalue] [int] NULL,
	[listvalue] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[business_attribute]  WITH CHECK ADD  CONSTRAINT [FK_business_attribute_business] FOREIGN KEY([businessid])
REFERENCES [dbo].[business] ([objid])
GO

ALTER TABLE [dbo].[business_attribute] CHECK CONSTRAINT [FK_business_attribute_business]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT ('') FOR [objid]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT (NULL) FOR [businessid]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT (NULL) FOR [attribute_objid]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT (NULL) FOR [attribute_name]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT (NULL) FOR [decimalvalue]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT (NULL) FOR [intvalue]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT (NULL) FOR [stringvalue]
GO

ALTER TABLE [dbo].[business_attribute] ADD  DEFAULT (NULL) FOR [boolvalue]
GO

ALTER TABLE businessaccount ADD department varchar(50) NULL;


ALTER TABLE business_receivable ADD  refid varchar(50);
ALTER TABLE business_receivable ADD  reftype varchar(50);

ALTER TABLE business_receivable ADD  remarks varchar(255);

ALTER TABLE business_receivable_payment ADD  iyear int DEFAULT 0; 
ALTER TABLE business_receivable_payment ADD voided int DEFAULT 0;

CREATE TABLE [dbo].[business_bin](
	[objid] [varchar](50) NOT NULL,
	[bin] [varchar](50) NOT NULL,
 CONSTRAINT [PK_business_bin] PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


  INSERT INTO sys_usergroup 
  (objid,title,domain,userclass,orgclass,role)
  VALUES
  ('BPLS.CITY_ENGINEER','CITY ENGINEER(BUSINESS)','BPLS','usergroup',NULL,'CITY_ENGINEER');
  
  INSERT INTO sys_usergroup 
  (objid,title,domain,userclass,orgclass,role)
  VALUES
  ('BPLS.BUSINESSINFO','BUSINESS INFORMATION','BPLS','usergroup',NULL,'BUSINESSINFO');
  
