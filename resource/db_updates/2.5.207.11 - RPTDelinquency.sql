
create table report_rptdelinquency
(
	rptledgerid varchar(50) primary key,
	barangayid varchar(50) not null,
	basic numeric(16,2)  not null,
	basicint numeric(16,2) not null,
	basicdisc numeric(16,2) not null,
	sef numeric(16,2) not null,
	sefint numeric(16,2) not null,
	sefdisc numeric(16,2) not null,
	firecode numeric(16,2) not null,
	dtgenerated datetime not null,
	generatedby_name varchar(75),
	generatedby_title varchar(50),
	[year] int not null,
	[month] int not null
)
go

create index ix_report_rptdelinquency_barangayid on report_Rptdelinquency(barangayid)
go



CREATE NONCLUSTERED INDEX ix_rptledger_statebrgy 
ON [dbo].[rptledger] ([state],[barangayid])
INCLUDE ([objid],[faasid],[nextbilldate],[lastyearpaid],[lastqtrpaid],[firstqtrpaidontime],[qtrlypaymentavailed],[qtrlypaymentpaidontime],[lastitemyear],[lastreceiptid],[advancebill],[lastbilledyear],[lastbilledqtr],[partialbasic],[partialbasicint],[partialbasicdisc],[partialsef],[partialsefint],[partialsefdisc],[partialledyear],[partialledqtr])
GO




