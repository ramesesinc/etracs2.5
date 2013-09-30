
alter table iligan..rptledger add advancebill int
go 

update iligan..rptledger set advancebill = 0 where advancebill is null
go

alter table iligan..rptledger alter column advancebill int not null
go 

create index ix_rptledger_advancebill on iligan..rptledger(advancebill, state)
go 



CREATE TABLE iligan..rptledgeritem (
  objid varchar(50) NOT NULL primary key,
  state varchar(25) NOT NULL,
  rptledgerid varchar(50) NOT NULL,
  rptledgerfaasid varchar(50) NOT NULL,
  year int NOT NULL,
  assessedvalue decimal(10,2) NOT NULL,
  basic decimal(10,2) NOT NULL,
  basicpaid decimal(10,2) NOT NULL,
  basicint decimal(10,2) NOT NULL,
  basicintpaid decimal(10,2) NOT NULL,
  basicintpartial decimal(10,2) NOT NULL,
  basicdisc decimal(10,2) NOT NULL,
  basicdisctaken decimal(10,2) NOT NULL,
  basicamnesty decimal(10,2) NOT NULL,
  basicintamnesty decimal(10,2) NOT NULL,
  basiccredit decimal(10,2) NOT NULL,
  sef decimal(10,2) NOT NULL,
  sefpaid decimal(10,2) NOT NULL,
  sefint decimal(10,2) NOT NULL,
  sefintpaid decimal(10,2) NOT NULL,
  sefintpartial decimal(10,2) NOT NULL,
  sefdisc decimal(10,2) NOT NULL,
  sefdisctaken decimal(10,2) NOT NULL,
  sefamnesty decimal(10,2) NOT NULL,
  sefintamnesty decimal(10,2) NOT NULL,
  sefcredit decimal(10,2) NOT NULL,
  basicacctid varchar(50) default '',
  basicintacctid varchar(50) default '',
  sefacctid varchar(50) default '',
  sefintacctid varchar(50) default '',
  firecode decimal(10,2) default NULL,
  firecodepaid decimal(10,2) default NULL,
  firecodeacctid varchar(50) default NULL,
  revtype varchar(15) default '',
  amnestyref varchar(50) default NULL,
  forpayment int NOT NULL,
  lastqtrpaid int NOT NULL,
  qtrly int NOT NULL,
  CONSTRAINT ux_rptledger_year UNIQUE(rptledgerid,year),
  CONSTRAINT FK_rptledgeritem_rptledger FOREIGN KEY (rptledgerid) REFERENCES rptledger (objid),
  CONSTRAINT FK_rptledgeritem_rptledgerfaas FOREIGN KEY (rptledgerfaasid) REFERENCES rptledgerfaas (objid)
)
GO

CREATE INDEX ix_rptledgeritem_ledgerstate on rptledgeritem(rptledgerid,state)
go

CREATE INDEX FK_rptledgeritem_rptledger on rptledgeritem(rptledgerid)
go

CREATE INDEX FK_rptledgeritem_rptledgerfaas on rptledgeritem(rptledgerfaasid)
go



CREATE TABLE rptledgeritem_qtrly (
  objid varchar(50) NOT NULL,
  state varchar(25) NOT NULL,
  rptledgerid varchar(50) NOT NULL,
  rptledgeritemid varchar(50) NOT NULL default '',
  year int NOT NULL,
  qtr int NOT NULL,
  assessedvalue decimal(10,2) NOT NULL,
  qtrlyav decimal(10,2) NOT NULL,
  basic decimal(10,2) NOT NULL,
  basicpaid decimal(10,2) NOT NULL,
  basicint decimal(10,2) NOT NULL,
  basicintpaid decimal(10,2) NOT NULL,
  basicintpartial decimal(10,2) NOT NULL,
  basicdisc decimal(10,2) NOT NULL,
  basicdisctaken decimal(10,2) NOT NULL,
  basicamnesty decimal(10,2) NOT NULL,
  basicintamnesty decimal(10,2) NOT NULL,
  basiccredit decimal(10,2) NOT NULL,
  sef decimal(10,2) NOT NULL,
  sefpaid decimal(10,2) NOT NULL,
  sefint decimal(10,2) NOT NULL,
  sefintpaid decimal(10,2) NOT NULL,
  sefintpartial decimal(10,2) NOT NULL,
  sefdisc decimal(10,2) NOT NULL,
  sefdisctaken decimal(10,2) NOT NULL,
  sefamnesty decimal(10,2) NOT NULL,
  sefintamnesty decimal(10,2) NOT NULL,
  sefcredit decimal(10,2) NOT NULL,
  firecode decimal(10,2) default NULL,
  firecodepaid decimal(10,2) default NULL,
  revtype varchar(15) default '',
  amnestyref varchar(50) default NULL,
  forpayment int NOT NULL,
  PRIMARY KEY  (objid),
  constraint ux_ledgeritem_year_qtr unique(rptledgeritemid,year,qtr),
  CONSTRAINT FK_ledgeritemqtrly_ledger FOREIGN KEY (rptledgerid) REFERENCES rptledger (objid),
  CONSTRAINT FK_ledgeritemqtrly_ledgeritem FOREIGN KEY (rptledgeritemid) REFERENCES rptledgeritem (objid)
) 
go

create index FK_rptledgeritem_rptledger on rptledgeritem_qtrly(rptledgerid)
go
create index FK_rptledgeritem_rptledgeritem on rptledgeritem_qtrly(rptledgeritemid)
go



CREATE TABLE sys_quarter (
  qtrid int NOT NULL,
  PRIMARY KEY  (qtrid)
)
go

insert into sys_quarter values(1)
go
insert into sys_quarter values(2)
go
insert into sys_quarter values(3)
go
insert into sys_quarter values(4)
go


