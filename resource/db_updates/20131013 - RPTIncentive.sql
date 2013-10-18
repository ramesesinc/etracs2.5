/*
drop table rpttaxincentive_item
drop table rpttaxincentive
*/

create table rpttaxincentive
(
objid varchar(50) primary key,
state varchar(25) not null,
txnno varchar(25) ,
txndate date ,
taxpayer_objid varchar(50) not null,
taxpayer_name text not null,
taxpayer_address varchar(150) not null,
name varchar(100) not null,
remarks varchar(250) not null,
createdby_objid varchar(50) not null,
createdby_name varchar(100) not null,
createdby_title varchar(50) not null,
createdby_date datetime not null
)
go

create index ix_rpttaxincentive_txnno on rpttaxincentive(txnno)
go
create index ix_rpttaxincentive_taxpayerid on rpttaxincentive(taxpayer_objid)
go
create index ix_rpttaxincentive_name on rpttaxincentive(name)
go
create index ix_rpttaxincentive_state on rpttaxincentive(state)
go


create table rpttaxincentive_item
(
objid varchar(50) primary key,
rpttaxincentiveid varchar(50) not null,
rptledgerid varchar(50) not null,
fromyear int not null,
toyear int not null,
basicrate int not null,
sefrate int not null,
constraint FK_rpttaxincentiveitem_rpttaxincentive foreign key (rpttaxincentiveid)
	references rpttaxincentive(objid),
constraint FK_rpttaxincentiveitem_rptledger foreign key (rptledgerid)
	references rptledger(objid)
)
go

create index ix_rpttaxincentiveitem_rpttaxincentiveid on rpttaxincentive_item(rpttaxincentiveid)
go
create index ix_rpttaxincentiveitem_rptledgerid on rpttaxincentive_item(rptledgerid)
go