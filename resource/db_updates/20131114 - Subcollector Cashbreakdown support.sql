
alter table subcollector_remittance add totalcash numeric(12,2)
go
alter table subcollector_remittance add totalnoncash numeric(12,2)
go
alter table subcollector_remittance add cashbreakdown varchar(800)
go
alter table subcollector_remittance add collectionsummaries text
go

update subcollector_remittance set 
	totalcash = 0.0,
	totalnoncash = 0.0
go 	

