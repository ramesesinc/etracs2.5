create table rptreceipt_capture
(
	objid varchar(50) primary key,
	rptledgerid varchar(50) not null,
	receiptno varchar(10) not null,
	receiptdate date not null,
	payorid varchar(50) ,
	paidby_name text not null,
	paidby_address varchar(150) not null,
	collector varchar(100) not null,
	amount decimal(12,2) not null,
	postedby varchar(100) not null,
	postedbytitle varchar(50) not null,
	dtposted datetime not null, 
	paidby varchar(50) not null,
	fromyear int not null,
	fromqtr int not null,
	toyear int not null,
	toqtr int not null,
	period varchar(50) not null,
	basic decimal(12,2) not null,
	basicint decimal(12,2) not null,
	basicdisc decimal(12,2) not null,
	sef decimal(12,2) not null,
	sefint decimal(12,2) not null,
	sefdisc decimal(12,2) not null,
	firecode decimal(12,2) not null,
	constraint FK_rptreceipt_capture_rptledger 
		foreign key(rptledgerid) references rptledger(objid)
)
go 

create index ix_rptreceipt_receiptno on rptreceipt_capture(receiptno)
go

create index ix_rptreceipt_capture_paidby on rptreceipt_capture(paidby)
go

create index ix_rptreceipt_payorid on rptreceipt_capture(payorid)
go





/*

drop index rptreceipt_capture.ix_rptreceipt_receiptno
drop index rptreceipt_capture.ix_rptreceipt_payorid
drop index rptreceipt_capture.ix_rptreceipt_capture_paidby
drop table rptreceipt_capture;
go

*/