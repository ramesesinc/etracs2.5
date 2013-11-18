CREATE TABLE bplexpiry (                    
     iqtr int NOT NULL,                    
     iyear int NOT NULL,                   
     expirytype varchar(50) NOT NULL,          
     expirydate datetime  NULL,         
     PRIMARY KEY  (iqtr,iyear,expirytype)  
)