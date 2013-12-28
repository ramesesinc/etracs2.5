use iligan
go
create table tracs_remittance 
(
	objid varchar(50) primary key, 
	txnno varchar(20) not null,
	dtposted datetime not null, 
	collector_objid varchar(50) not null,
	collector_name varchar( 100) not null,
	collector_title varchar(30) not null,
	amount decimal(18,2) not null, 
	postedby varchar(50) not null
)
go 

create table tracs_cashreceipt
(
	objid varchar(50) primary key, 
	formno varchar(50) not null,
	formtype varchar(25) not null,
	receiptno varchar(50) not null,
	receiptdate datetime not null,
	paidby varchar(255) not null,
	paidbyaddress varchar(255) not null,
	amount decimal(16, 2) not null,
	collector_objid varchar(50) not null,
	collector_name varchar( 100) not null,
	collector_title varchar(30) not null,
	collectiontype_objid varchar( 50) not null,
	collectiontype_name varchar(100) not null,
	remittanceid varchar(50) not null,
)

go

create table tracs_cashreceiptitem
(
	objid varchar(50) primary key,
	receiptid varchar(50) null,
	item_objid varchar(50) null,
	item_code varchar(255) null,
	item_title varchar(255) null,
	amount decimal(16,2) null 	
)
go