create table directcash_collection
(
objid varchar(50) not null primary key,
state varchar(25) not null,
payee varchar(150) not null,
refdate date not null,
refno varchar(25) not null,
amount numeric(16,2) not null,
remarks varchar(250)
)
go


create table directcash_collection_item
(
objid varchar(50) not null primary key,
parentid varchar(50) not null,
item_objid varchar(50) not null,
amount numeric(16,2) not null,
constraint FK_directcash_collection_item foreign key (parentid)
	references directcash_collection(objid),
constraint FK_directcash_collection_item_revenueitem foreign key (item_objid)
	references revenueitem(objid),	
)
go

create index ix_directcash_collection_refdate on directcash_collection(refdate)
go