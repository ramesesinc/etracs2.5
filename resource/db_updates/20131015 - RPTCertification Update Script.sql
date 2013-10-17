
alter table rptcertification add office varchar(50)
go

create index ix_rptcertification_office on rptcertification(office)
go

create index ix_rptcertification_office_txnno on rptcertification(office, txnno)
go

create index ix_rptcertification_office_requestedby on rptcertification(office, requestedby)
go

update rptcertification set office = 'assessor'  where opener not like 'rpttaxclearance'
go

update rptcertification set office = 'landtax'  where opener like 'rpttaxclearance'
go
