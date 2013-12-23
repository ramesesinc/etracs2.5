
create table brgyshare_account_mapping
(
	barangayid varchar(50) not null primary key,
	acct_objid varchar(50) not null,
	penaltyacct_objid varchar(50) null
)
go 



insert into brgyshare_account_mapping
(barangayid, acct_objid, penaltyacct_objid)
select objid, '', null from barangay
go



update bam set 
	bam.acct_objid = ri.objid 
from barangay b, revenueitem ri, brgyshare_account_mapping  bam
where ri.title like '%'+b.name+'%'
  and ri.title like '%RPT%SHARE%'
  and b.objid = bam.barangayid 
go





update brgyshare_account_mapping set
	acct_objid = 'REVITEM1e022843:141bb55e9df:-43b8'
where barangayid = 'BRGY00000007'	
go


update brgyshare_account_mapping set
	acct_objid = 'REVITEM1e022843:141bb6db72b:-f5d'
where barangayid = 'BRGY00000027'	
go


update brgyshare_account_mapping set
	acct_objid = 'REVITEM1e022843:141bb5ad19b:-7849'
where barangayid = 'BRGY00000011'	
go





alter table cashreceiptitem_rpt  add lgushare numeric(16,2) not null default 0
go

alter table cashreceiptitem_rpt  add lguintshare numeric(16,2) not null default 0
go




alter table cashreceiptitem_rpt  add brgyshare numeric(16,2) not null default 0
go

alter table cashreceiptitem_rpt  add brgyintshare numeric(16,2) not null default 0
go



update cri set 
	cri.brgyshare =	ROUND((cri.basic - cri.basicdisc) * 0.30, 2),
	cri.brgyintshare =	ROUND(cri.basicint * 0.30, 2)
from cashreceiptitem_rpt cri 
go

update cri set 
	cri.lgushare =	cri.basic - cri.basicdisc - cri.brgyshare,
	cri.lguintshare =	 cri.basicint - cri.brgyintshare 
from cashreceiptitem_rpt cri 
go


