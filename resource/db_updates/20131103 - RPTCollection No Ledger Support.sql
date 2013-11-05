--  drop table cashreceiptitem_rpt_noledger
create table cashreceiptitem_rpt_noledger
(
	objid varchar(100) not null primary key,
	tdno varchar(25) not null,
	pin varchar(25) not null,
	rputype varchar(15) not null,
	cadastrallotno varchar(200),
	txntype_objid varchar(5) ,
	classification_objid varchar(50) not null,
	actualuse_objid varchar(50) not null,
	barangay_objid varchar(50) not null,
	av numeric(16,2) not null,
	originalav numeric(16,2) not null,
	constraint FK_cashreceiptitem_rpt_noledger_cashreceiptitem_rpt foreign key (objid)
		references cashreceiptitem_rpt(objid)
)
go

alter table cashreceiptitem_rpt alter column basicacct_objid varchar(50) null
go
alter table cashreceiptitem_rpt alter column basicintacct_objid varchar(50) null
go
alter table cashreceiptitem_rpt alter column sefacct_objid varchar(50) null
go
alter table cashreceiptitem_rpt alter column sefintacct_objid varchar(50) null
go
