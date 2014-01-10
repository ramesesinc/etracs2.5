-- LGU SHARE
alter table rptledgerbillitem add lgushare numeric(16,2) not null default 0
go

alter table rptledgerbillitem add lguintshare numeric(16,2) not null default 0
go

-- BRGY SHARE
alter table rptledgerbillitem add brgyshare numeric(16,2) not null default 0
go

alter table rptledgerbillitem add brgyintshare numeric(16,2) not null default 0
go

alter table rptledgerbillitem add brgyshareacctid varchar(50)
go

alter table rptledgerbillitem add brgyintshareacctid varchar(50)
go


-- PROVINCE SHARE
alter table rptledgerbillitem add provshare numeric(16,2) not null default 0
go

alter table rptledgerbillitem add provintshare numeric(16,2) not null default 0
go

alter table rptledgerbillitem add provshareacctid varchar(50)
go

alter table rptledgerbillitem add provintshareacctid varchar(50)
go



-- CASHRECEIPTITEM : BRGY SHARE
alter table cashreceiptitem_rpt add brgyshare decimal(16,2) not null default(0)
go

alter table cashreceiptitem_rpt add brgyintshare decimal(16,2) not null default(0)
go

alter table cashreceiptitem_rpt add brgyshareacctid varchar(50)
go

alter table cashreceiptitem_rpt add brgyintshareacctid varchar(50)
go


-- CASHRECEIPTITEM : LGU SHARE
alter table cashreceiptitem_rpt add lgushare decimal(16,2) not null default(0)
go

alter table cashreceiptitem_rpt add lguintshare decimal(16,2) not null default(0)
go




-- CASHRECEIPTITEM : PROVINCE SHARE
alter table cashreceiptitem_rpt add provshare decimal(16,2) not null default(0)
go

alter table cashreceiptitem_rpt add provintshare decimal(16,2) not null default(0)
go

alter table cashreceiptitem_rpt add provshareacctid varchar(50)
go

alter table cashreceiptitem_rpt add provintshareacctid varchar(50)
go







insert into sys_rulegroup values('PROV_SHARE', 'rptbilling', 'Province Share Computation', 15)
go



insert into sys_rulegroup values('LGU_SHARE', 'rptbilling', 'LGU Share Computation', 16)
go


insert into sys_rulegroup values('BRGY_SHARE', 'rptbilling', 'Barangay Share Computation', 17)
go



