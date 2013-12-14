

alter table rptledger add lastbilledyear integer default 0
go

alter table rptledger add lastbilledqtr integer default 0
go

alter table rptledger add partialbasic numeric(16,2) default 0.0
go

alter table rptledger add partialbasicint numeric(16,2) default 0.0
go

alter table rptledger add partialbasicdisc numeric(16,2) default 0.0
go

alter table rptledger add partialsef numeric(16,2) default 0.0
go

alter table rptledger add partialsefint numeric(16,2) default 0.0
go

alter table rptledger add partialsefdisc numeric(16,2) default 0.0
go

alter table rptledger add partialledyear int default 0
go

alter table rptledger add partialledqtr int default 0
go


update rptledger set 
	lastbilledyear = 0,
	lastbilledqtr = 0,
	partialbasic = 0,
	partialbasicint = 0,
	partialbasicdisc = 0,
	partialsef = 0,
	partialsefint = 0,
	partialsefdisc = 0,
	partialledyear = 0,
	partialledqtr = 0
go	


drop table rptledgerbillitem
go


CREATE TABLE rptledgerbillitem(
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
	basicacctid varchar(50) null,
	basicintacctid varchar(50) null,
	sefacctid varchar(50) null,
	sefintacctid varchar(50) null,
	firecodeacctid varchar(50) null
PRIMARY KEY CLUSTERED 
(
	[objid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


alter table rptledgerbillitem 
	add constraint FK_rptledgerbillitem_rptledger foreign key(rptledgerid) 
	references rptledger(objid)
go
	
alter table rptledgerbillitem 
	add constraint FK_rptledgerbillitem_rptledgerfaas foreign key(rptledgerfaasid) 
	references rptledgerfaas(objid)
go

create index ix_rptledgerbillitem_rptledgerid on rptledgerbillitem(rptledgerid)
go

create index ix_rptledgerbillitem_rptledgerfaasid on rptledgerbillitem(rptledgerfaasid)
go


alter table rptledgerbillitem add constraint ux_rptledgerbillitem_ledgeridyearqtr unique(rptledgerid, year,qtr)
go




alter table cashreceiptitem_rpt drop constraint FK_cashreceiptrptitem_rptledgeritem
go


drop index cashreceiptitem_rpt.FK_cashreceiptrptitem_rptledgeritemqtrly
go

drop index cashreceiptitem_rpt.FK_rptreceiptitem_rptledgeritem
go

alter table cashreceiptitem_rpt drop column rptledgeritemid
go

alter table cashreceiptitem_rpt drop constraint DF__cashrecei__rptle__10966653
go

alter table cashreceiptitem_rpt drop column rptledgeritemqtrlyid
go

alter table cashreceiptitem_rpt drop column qtrly 
go



alter table cashreceiptitem_rpt add rptledgerfaasid varchar(50)
go
alter table cashreceiptitem_rpt add fromqtr int
go
alter table cashreceiptitem_rpt add toqtr int
go



