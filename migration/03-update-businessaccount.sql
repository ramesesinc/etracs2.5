ALTER TABLE businessaccount ADD surcharge_objid varchar(50);
ALTER TABLE businessaccount ADD interest_objid varchar(50);

ALTER TABLE businessaccount ADD CONSTRAINT 
   fk_businessaccount_surcharge  
   FOREIGN KEY (surcharge_objid) REFERENCES revenueitem(objid); 
   
ALTER TABLE businessaccount ADD CONSTRAINT 
   fk_businessaccount_interest  
   FOREIGN KEY (interest_objid) REFERENCES revenueitem(objid);  


/****** Object:  Table [dbo].[bpexpirydate]    Script Date: 11/08/2013 16:48:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[bpexpirydate](
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