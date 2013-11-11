create table remoteserverdata
(
	objid varchar(50) not null primary key,
	data text not null
)
go


insert into sys_usergroup 
	(objid, title, domain, userclass, orgclass, role)
values 
	('ETRACSADMIN.TOOLS', 'ETRACS ADMIN', 'ETRACSADMIN', 'usergroup', null, 'ETRACS_ADMIN')
go
