
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



alter table cashbook drop uix_subacct_fund
go


alter table cashbook add constraint ux_subacct_fund_type unique(subacct_objid, fund_objid, type)
go


CREATE TABLE bplexpiry (                    
     iqtr int NOT NULL,                    
     iyear int NOT NULL,                   
     expirytype varchar(50) NOT NULL,          
     expirydate datetime  NULL,         
     PRIMARY KEY  (iqtr,iyear,expirytype)  
)
go



alter table fund add special int default 1 not null 
go


alter table collectiontype add barcodekey varchar(50)
go


