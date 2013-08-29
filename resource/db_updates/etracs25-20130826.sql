
ALTER TABLE rptcertification
	CHANGE COLUMN taxpayerid taxpayer_objid VARCHAR(50),
	CHANGE COLUMN taxpayername taxpayer_name VARCHAR(1500),
	CHANGE COLUMN taxpayeraddress taxpayer_address VARCHAR(150);