
insert into sys_usergroup_permission
values('RPT-LEDGER-CHANGESTATE', 'RPT.LANDTAX', 'rptledger', 'changestate')
go




alter table bankdeposit_entry add summaries text null
go

alter table bankaccount add cashreport varchar(100)
go
alter table bankaccount add cashbreakdownreport varchar(100)
go
alter table bankaccount add checkreport varchar(100)
go
alter table bankaccount add checkbreakdownreport varchar(100)
go