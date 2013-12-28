create table ngas_revenue
(
	objid varchar(50) not null primary key,
	state varchar(25) not null,
	type varchar(50) not null,
	txndate datetime not null,
	dtposted datetime not null,
	postedby_objid varchar(50) not null,
	postedby_name varchar(100) not null,
	postedby_title varchar(50) not null,
	amount numeric(16,2) not null
)
go

-- drop table ngas_revenueitem
create table ngas_revenueitem
(
	objid varchar(50) not null primary key,
	parentid varchar(50) not null,
	refid varchar(50) not null,
	refsource varchar(50) not null,
	refno varchar(25) not null,
	refdate datetime not null,
	item_objid varchar(50) not null,
	fund_objid varchar(50) not null,
	acct_objid varchar(50) null,
	subacct_objid varchar(50) null,
	collectiontype_objid varchar(50) not null,
	amount numeric(16,2) not null
)
go


alter table ngas_revenueitem 
	add constraint FK_ngasrevenueitem_ngasrevenue foreign key(parentid)
		references ngas_revenue(objid)
go


alter table ngas_revenueitem 
	add constraint FK_ngasrevenueitem_revitem foreign key(item_objid)
		references revenueitem(objid)
go


alter table ngas_revenueitem 
	add constraint FK_ngasrevenueitem_fund foreign key(fund_objid)
		references fund(objid)
go


alter table ngas_revenueitem 
	add constraint FK_ngasrevenueitem_colltype foreign key(collectiontype_objid)
		references collectiontype(objid)
go




		
create table ngas_revenue_cashreceipt
(
	objid varchar(50) not null primary key,
	parentid varchar(50) not null
)		

alter table ngas_revenue_cashreceipt
	add constraint FK_ngasrevenuecashreceipt_ngasrevenue foreign key(parentid)
		references ngas_revenue(objid)
go

alter table ngas_revenue_cashreceipt
	add constraint FK_ngasrevenuecashreceipt_cashreceipt foreign key(objid)
		references cashreceipt(objid)
go

-- alter table ngas_revenue_cashreceipt drop constraint FK_ngasrevenuecashreceipt_cashreceipt
		
create table ngas_revenue_remittance
(
	objid varchar(50) not null primary key,
	parentid varchar(50) not null
)		

alter table ngas_revenue_remittance
	add constraint FK_ngasrevenueremittance_ngasrevenue foreign key(parentid)
		references ngas_revenue(objid)
go

alter table ngas_revenue_remittance
	add constraint FK_ngasrevenueremittance_remittance foreign key(objid)
		references remittance(objid)
go




create table ngas_revenue_liquidation
(
	objid varchar(50) not null primary key,
	parentid varchar(50) not null
)		

alter table ngas_revenue_liquidation
	add constraint FK_ngasrevenueliquidation_ngasrevenue foreign key(parentid)
		references ngas_revenue(objid)
go

alter table ngas_revenue_liquidation
	add constraint FK_ngasrevenueliquidation_liquidation foreign key(objid)
		references liquidation_cashier_fund(objid)
go



create table ngas_revenue_deposit
(
	objid varchar(50) not null primary key,
	parentid varchar(50) not null
)		

alter table ngas_revenue_deposit
	add constraint FK_ngasrevenuedeposit_ngasrevenue foreign key(parentid)
		references ngas_revenue(objid)
go

alter table ngas_revenue_deposit
	add constraint FK_ngasrevenuedeposit_deposit foreign key(objid)
		references bankdeposit(objid)
go


