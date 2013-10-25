
insert into sys_usergroup_permission 
	(objid, usergroupid, object, permission )
VALUES 
	('RPT-LEDGER-C', 'LANDTAX', 'rptledger', 'capturepayment')
go	

insert into sys_usergroup_permission 
	(objid, usergroupid, object, permission )
VALUES 
	('RPT-LEDGER-FL', 'LANDTAX', 'rptledger', 'fixledger')
go