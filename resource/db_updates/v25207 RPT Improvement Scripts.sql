
create index ix_realproperty_pin on realproperty(pin)
go


alter table realproperty drop constraint FK_realproperty_pin
go

drop index realproperty.FK_realproperty_pin
go

alter table realproperty drop column pinid
go


alter table realproperty add lguid varchar(50)
go
update realproperty set lguid = '169'
go


alter table realproperty drop constraint ux_realproperty_rypinclaimno
go 


alter table realproperty drop constraint ux_realproperty_rypinclaimnostate
go


alter table faas add dtapproved date 
go


alter table rpumaster add currentfaasid varchar(50)
go
alter table rpumaster add currentrpuid varchar(50)
go


alter table faas add realpropertyid varchar(50)
go

update f set 
	f.realpropertyid = r.realpropertyid 
from faas f 
	inner join rpu r on f.rpuid = r.objid 
go	




drop index txnsignatory.ix_signatory_name
go
drop index txnsignatory.ix_name
go




  
  alter table faas add lgutype varchar(25)
  go
  
  update faas set lgutype = 'city'
  go
  
  
  
  
  
CREATE NONCLUSTERED INDEX ix_faas_realproperty
ON [dbo].[faas] ([realpropertyid])
INCLUDE ([objid])
GO




alter table resection add signatories varchar(2000)
go


alter table resectionaffectedrpu drop constraint ux_reseectionaffectedrpu_sect_rtype_suffix_newrpid




alter table subdividedland alter column newrpuid varchar(50) null
go



alter table subdividedland add constraint ux_subdividedland unique(subdivisionid, newrpid)
go






alter table subdivision add lguid varchar(50)
go


update subdivision set lguid = '169'
go 





alter table consolidation alter column newrpid varchar(50) null
go
alter table consolidation alter column newrpuid varchar(50) null
go







alter table faas alter column taxpayer_objid varchar(50) null
go
alter table faas alter column taxpayer_name text null
go
alter table faas alter column taxpayer_address varchar(150) null
go
alter table faas alter column owner_name text null
go
alter table faas alter column owner_address varchar(150) null
go



alter table realproperty alter column section varchar(3) null
go

alter table realproperty alter column parcel varchar(3) null
go

alter table realproperty alter column north varchar(255) null
go
alter table realproperty alter column south varchar(255) null
go
alter table realproperty alter column east varchar(255) null
go
alter table realproperty alter column west varchar(255) null
go

alter table rpu alter column classification_objid varchar(50) null
go







create table rpttask
(
	taskid varchar(50) primary key,
	objid varchar(50) not null,
	action varchar(50) not null,
	refno varchar(50) not null,
	filetype varchar(50) not null,
	msg varchar(100),
	startdate datetime not null,
	enddate datetime null,
	createdby_objid varchar(50) not null,
	createdby_name varchar(150) not null,
	createdby_title varchar(50) ,
	assignedto_objid varchar(50),
	assignedto_name varchar(150),
	assignedto_title varchar(50),
)
go

create index ix_rpttask_objid on rpttask(objid)
go

create index ix_rpttask_createdby_objid on rpttask(createdby_objid)
go
create index ix_rpttask_createdby_name on rpttask(createdby_name)
go

create index ix_rpttask_assignedto_objid on rpttask(assignedto_objid)
go
create index ix_rpttask_assignedto_name on rpttask(assignedto_name)
go

create index ix_rpttask_enddate on rpttask(enddate)
go

create index ix_rpttask_assignedto_enddate on rpttask(assignedto_objid,enddate)
go





/*========================================================================
**
** SIGNATORIES
**
========================================================================*/

alter table faas add signatories varchar(1000)
go

update faas set signatories = null  
go



alter table subdivision add signatories varchar(1000)
go

update subdivision set signatories = null  
go



alter table consolidation add signatories varchar(1000)
go

update consolidation set signatories = null  
go



alter table txnsignatory drop constraint DF__txnsignat__dtsig__492FC531
go

alter table txnsignatory alter column dtsigned date null
go






alter table faas alter column rpuid varchar(50) null
go

alter table bldgrpu alter column bldgtype_objid varchar(50) null
go
alter table bldgrpu alter column bldgkindbucc_objid varchar(50) null
go



alter table miscrpu alter column actualuse_objid varchar(50) null
go




create table rpttracking
(
	objid varchar(50) not null primary key,
	filetype varchar(50) not null,
	trackingno varchar(25) not null,
	msg varchar(150)
)
go

alter table rpttracking add constraint ux_rpttracking_trackingno unique(trackingno)
go







DROP TABLE resectionitem
go
drop table resectionaffectedrpu
go
drop table resection
go 



/****** Object:  Table [dbo].[resection]    Script Date: 02/13/2014 11:00:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[resection](
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



/****** Object:  Table [dbo].[resectionitem]    Script Date: 02/13/2014 11:01:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[resectionitem](
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

ALTER TABLE [dbo].[resectionitem]  WITH CHECK ADD  CONSTRAINT [FK_resectionitem_resection] FOREIGN KEY([resectionid])
REFERENCES [dbo].[resection] ([objid])
GO

ALTER TABLE [dbo].[resectionitem] CHECK CONSTRAINT [FK_resectionitem_resection]
GO




/****** Object:  Table [dbo].[resectionaffectedrpu]    Script Date: 02/13/2014 11:01:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[resectionaffectedrpu](
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

ALTER TABLE [dbo].[resectionaffectedrpu]  WITH CHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_newfaas] FOREIGN KEY([newfaasid])
REFERENCES [dbo].[faas] ([objid])
GO

ALTER TABLE [dbo].[resectionaffectedrpu] CHECK CONSTRAINT [FK_resectionaffectedrpu_newfaas]
GO

ALTER TABLE [dbo].[resectionaffectedrpu]  WITH CHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_newrp] FOREIGN KEY([newrpid])
REFERENCES [dbo].[realproperty] ([objid])
GO

ALTER TABLE [dbo].[resectionaffectedrpu] CHECK CONSTRAINT [FK_resectionaffectedrpu_newrp]
GO

ALTER TABLE [dbo].[resectionaffectedrpu]  WITH CHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_newrpu] FOREIGN KEY([newrpuid])
REFERENCES [dbo].[rpu] ([objid])
GO

ALTER TABLE [dbo].[resectionaffectedrpu] CHECK CONSTRAINT [FK_resectionaffectedrpu_newrpu]
GO

ALTER TABLE [dbo].[resectionaffectedrpu]  WITH CHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_prevfaas] FOREIGN KEY([prevfaasid])
REFERENCES [dbo].[faas] ([objid])
GO

ALTER TABLE [dbo].[resectionaffectedrpu] CHECK CONSTRAINT [FK_resectionaffectedrpu_prevfaas]
GO

ALTER TABLE [dbo].[resectionaffectedrpu]  WITH CHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_prevrp] FOREIGN KEY([prevrpid])
REFERENCES [dbo].[realproperty] ([objid])
GO

ALTER TABLE [dbo].[resectionaffectedrpu] CHECK CONSTRAINT [FK_resectionaffectedrpu_prevrp]
GO

ALTER TABLE [dbo].[resectionaffectedrpu]  WITH CHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_prevrpu] FOREIGN KEY([prevrpuid])
REFERENCES [dbo].[rpu] ([objid])
GO

ALTER TABLE [dbo].[resectionaffectedrpu] CHECK CONSTRAINT [FK_resectionaffectedrpu_prevrpu]
GO

ALTER TABLE [dbo].[resectionaffectedrpu]  WITH CHECK ADD  CONSTRAINT [FK_resectionaffectedrpu_resection] FOREIGN KEY([resectionid])
REFERENCES [dbo].[resection] ([objid])
GO

ALTER TABLE [dbo].[resectionaffectedrpu] CHECK CONSTRAINT [FK_resectionaffectedrpu_resection]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newsection]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newparcel]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newtdno]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newpin]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newsuffix]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newfaasid]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newrpuid]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [newrpid]
GO

ALTER TABLE [dbo].[resectionaffectedrpu] ADD  DEFAULT (NULL) FOR [memoranda]
GO






/*==================================================================
*
* MULTIPLE CLAIM SETTLEMENT UPDATE 
*
===================================================================*/
create table mcsettlement
(
	objid varchar(50) primary key,
	state varchar(25), 
	txnno varchar(25),
	effectivityyear int not null,
	effectivityqtr int not null,
	memoranda varchar(2000), 
	prevfaas_objid varchar(50), 
	newfaas_objid varchar(50),
	newtdno varchar(25),
	signatories varchar(1000) not null,
	lgutype varchar(25) not null,
	lguid varchar(50) not null,
	constraint FK_mcsettlement_prevfaas  foreign key (prevfaas_objid)
		references faas(objid),
	constraint FK_mcsettlement_newfaas foreign key (newfaas_objid)
		references faas(objid)
)
go

create index ix_mcsettlement_state on mcsettlement(state)
go
create index ix_mcsettlement_txnno on mcsettlement(txnno)
go


create table mcsettlement_otherclaim
(
	objid varchar(50) primary key,
	mcsettlementid varchar(50) not null,
	faas_objid varchar(50) not null,
	constraint FK_mcotherclaim_mc foreign key (mcsettlementid)
		references mcsettlement(objid),
	constraint FK_mcotherclaim_faas foreign key (faas_objid)
		references faas(objid),
	constraint ux_mcotherclaim_faas_objid unique(faas_objid)
)
go

create index ix_mcotherclaim_mcid on mcsettlement_otherclaim(mcsettlementid)
go
create index ix_mcotherclaim_faas_objid on mcsettlement_otherclaim(faas_objid)
go




create table mcsettlement_affectedrpu
(
	objid varchar(50) primary key,
	mcsettlementid varchar(50) not null,
	rputype varchar(15)  not null,
	prevfaas_objid varchar(50) not null,
	newfaas_objid varchar(50) null,
	newtdno varchar(50) null,
	constraint FK_mcaffectedrpu_mc foreign key (mcsettlementid)
		references mcsettlement(objid),
	constraint FK_mcaffectedrpu_prevfaas foreign key (prevfaas_objid)
		references faas(objid),
	constraint FK_mcaffectedrpu_newfaas foreign key (newfaas_objid)
		references faas(objid),
	constraint ux_mcaffectedrpu_prevfaas_objid unique(prevfaas_objid)
)
create index ix_mcaffectedrpu_mcid on mcsettlement_affectedrpu(mcsettlementid)
go
create index ix_mcaffectedrpu_prevfaas_objid on mcsettlement_affectedrpu(prevfaas_objid)
go
create index ix_mcaffectedrpu_newfaas_objid on mcsettlement_affectedrpu(newfaas_objid)
go






/*===============================================================
*
* SMS SUPPORT
*
===============================================================*/



CREATE TABLE sms_rpt_registration
(
  mobileno varchar(25) NOT NULL,
  rptledgerid varchar(50) NOT NULL,
  dtregistered datetime not null,
  primary key(mobileno, rptledgerid)
) 

go

create index ix_smsrptreg_rptledgerid on sms_rpt_registration(rptledgerid)
go





CREATE TABLE rpt_sms_registration
(
  phoneno varchar(25) NOT NULL,
  rptledgerid varchar(50) NOT NULL,
  dtregistered datetime not null,
  primary key(phoneno, rptledgerid)
) 

go

create index ix_rptsmsreg_rptledgerid on rpt_sms_registration(rptledgerid)
go



create table rpt_sms
(
	objid varchar(50) primary key,
	traceid varchar(50) not null,
	phoneno varchar(50) not null,
	logdate datetime not null,
	message varchar(500), 
	amount numeric(10,2) not null,
	amtpaid numeric(10,2) not null,
	action varchar(100),
)
go

create index ix_rptsms_traceid on rpt_sms(traceid)
go
create index ix_rptsms_phoneno on rpt_sms(phoneno)
go