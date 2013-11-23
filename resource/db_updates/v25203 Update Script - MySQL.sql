
ALTER TABLE subcollector_remittance ADD COLUMN totalcash NUMERIC(12,2);
ALTER TABLE subcollector_remittance ADD COLUMN totalnoncash NUMERIC(12,2);
ALTER TABLE subcollector_remittance ADD COLUMN cashbreakdown VARCHAR(800);
ALTER TABLE subcollector_remittance ADD COLUMN collectionsummaries TEXT;

UPDATE subcollector_remittance SET 
	totalcash = 0.0,
	totalnoncash = 0.0; 	



DROP INDEX uix_subacct_fund ON cashbook;

CREATE UNIQUE INDEX ux_subacct_fund_type ON cashbook(subacct_objid, fund_objid, `TYPE`);



CREATE TABLE bplexpiry (                    
     iqtr INT NOT NULL,                    
     iyear INT NOT NULL,                   
     expirytype VARCHAR(50) NOT NULL,          
     expirydate DATETIME  NULL,         
     PRIMARY KEY  (iqtr,iyear,expirytype)  
);



ALTER TABLE fund ADD COLUMN special INT DEFAULT 1 NULL ;

