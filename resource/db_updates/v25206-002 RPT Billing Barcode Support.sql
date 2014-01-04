/*
drop table rptbill_ledger
go
drop table rptbill
go
*/

create table rptbill
(
	objid varchar(50) primary key,
	taxpayer_objid varchar(50) not null,
	taxpayer_name text not null,
	taxpayer_address varchar(150) not null,
	barcode varchar(25) not null,
	expirydate date not null,
	postedby varchar(100) not null,
	postedbytitle varchar(50)
)
go

alter table rptbill add constraint ux_rptbill_barcode unique (barcode)
go




create table rptbill_ledger
(
	rptledgerid varchar(50) not null,
	rptbillid varchar(50) not null,
	primary key(rptledgerid, rptbillid)
)
go

alter table rptbill_ledger add constraint FK_rptbillledger_rptbill 
	foreign key (rptbillid) references rptbill(objid)
go 


update collectiontype set barcodekey = '56001' where name = 'REALTY_TAX'
go


