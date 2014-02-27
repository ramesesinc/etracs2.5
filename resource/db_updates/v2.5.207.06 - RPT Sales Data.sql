create table rpt_sales_data
(
	objid varchar(50) primary key,
	seller_name varchar(250) not null,
	seller_address varchar(100) not null,
	buyer_name varchar(250) not null,
	buyer_address varchar(100) not null,
	saledate date not null,
	amount numeric(16,2) not null,
	remarks varchar(1000),
	CONSTRAINT FK_faas_sales_data FOREIGN KEY (objid)
		REFERENCES faas (objid)
)
go

create index ix_FK_faas_sales_data ON rpt_sales_data(objid)
go
create index ix_sellername ON rpt_sales_data(seller_name)
go
create index ix_buyername ON rpt_sales_data(buyer_name)
go