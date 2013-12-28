use tracs_etracs
go
create table tbletracsaccountmapping 
(
	taxfeeid varchar(50) not null,
	item_objid varchar(50) not null, 
	item_code varchar(50) null,  
	item_title varchar(255) null, 
	fund_objid varchar(50) null,
	fund_code varchar(50) null,
	fund_title varchar(50) null, 
	PRIMARY KEY ( taxfeeid,item_objid)  
)

go

create table cashreceipts
(
	objid varchar(50) primary key
)
go 

