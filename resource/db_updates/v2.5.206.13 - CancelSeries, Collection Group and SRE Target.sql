
create table cashreceipt_cancelseries
(
	objid varchar(50) primary key,
	receiptid varchar(50) not null,
	txndate datetime not null,
	postedby_objid varchar(50),
	postedby_name varchar(100),
	reason varchar(255),
	CONSTRAINT FK_cashreceipt_cancelseries_receipt FOREIGN KEY (receiptid) REFERENCES cashreceipt (objid)
)	

go


create table afserial_inventory_detail_cancelseries 
(
	objid varchar(50) ,
	series int,
	controlid varchar(50), 
	primary key( objid, series)
)
go


create table collectiongroup 
(
	objid varchar(50) primary key,
	state varchar(30) not null,
	name varchar(150) not null,
	constraint uix_colletiongroup_name UNIQUE (name)
)

go 


create table collectiongroup_revenueitem 
(
	collectiongroupid varchar(50) not null,
	revenueitemid varchar(50) not null,
	PRIMARY KEY (collectiongroupid, revenueitemid)
)

go

create table sreaccount_incometarget 
(
	objid varchar(50) not null,
	year int not null,
	target decimal(18,2) null,
	primary key(objid, year) 
)

go