alter table brgyshareitem add commonshare numeric(16,2)
go

alter table brgyshare add sharetype varchar(50)
go


alter table brgyshareitem add basiccurrent numeric(16,2)
go
alter table brgyshareitem add basicprevious numeric(16,2)
go
alter table brgyshareitem add basiccollection numeric(16,2)
go
alter table brgyshareitem add basicintcollection numeric(16,2)
go


alter table ap_detail drop constraint ux_ap_detail_txnrefno
go




/*==============================================================
**
** CTC SUPPORT 
**
===============================================================*/
create table profession
(
	objid varchar(100) primary key
)
go 



insert into sys_ruleset values('ctcindividual', 'CTC Individual Assessment Rules', 'ctcindividual', null, null, null)
go

insert into sys_ruleset values('ctccorporate', 'CTC Corporate Assessment Rules', 'ctccorporate', null, null, null)
go



insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('TAX', 'ctcindividual', 'Tax Computation', 1)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('ADDITIONAL_TAX', 'ctcindividual', 'Additional Tax Computation', 2)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('AFTER_TAX', 'ctcindividual', 'After Tax Computation', 3)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('INTEREST', 'ctcindividual', 'Interest Computation', 4)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('SHARE', 'ctcindividual', 'Barangay Share Computation', 5)
go


insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('TAX', 'ctccorporate', 'Tax Computation', 1)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('ADDITIONAL_TAX', 'ctccorporate', 'Additional Tax Computation', 2)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('AFTER_TAX', 'ctccorporate', 'After Tax Computation', 3)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('INTEREST', 'ctccorporate', 'Interest Computation', 4)
go
