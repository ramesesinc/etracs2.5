drop table report_rptdelinquency
go

create table report_rptdelinquency
(
	objid varchar(50) primary key,
	rptledgerid varchar(50) not null,
	[year] int not null,
	[qtr] int not null,
	barangayid varchar(50) not null,
	basic numeric(16,2)  not null,
	basicint numeric(16,2) not null,
	basicdisc numeric(16,2) not null,
	sef numeric(16,2) not null,
	sefint numeric(16,2) not null,
	sefdisc numeric(16,2) not null,
	firecode numeric(16,2) not null,
	dtgenerated datetime not null,
	generatedby_name varchar(75),
	generatedby_title varchar(50)
)
go

create index ix_report_rptdelinquency_rptledgerid on report_Rptdelinquency(rptledgerid)
go
create index ix_report_rptdelinquency_barangayid on report_Rptdelinquency(barangayid)
go
create index ix_report_rptdelinquency_year on report_Rptdelinquency(year)
go


