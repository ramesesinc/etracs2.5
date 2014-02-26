
create table rpt_requirement_type
(
	objid varchar(50) primary key,
	state varchar(50) not null,
	name varchar(100) not null,
	description varchar(150),
	handler varchar(100),
	sortorder int not null
)
go

create index ix_rptrequirementtype_name on rpt_requirement_type(name)
go

alter table rpt_requirement_type add constraint ux_rptrequirementtype_name unique(name)
go




insert into sys_ruleset 
	(name, title, packagename, domain, role, [permission])
values
	('rptrequirement', 'RPT Requirement Rules', 'rptrequirement', null, null, null)
go	



insert into sys_rulegroup 
	(name, ruleset, title, sortorder)
values('REQUIREMENT', 'rptrequirement', 'Requirement', 1)		
go

insert into sys_rulegroup 
	(name, ruleset, title, sortorder)
values('AFTER_REQUIREMENT', 'rptrequirement', 'After Requirement', 2)		
go






create table rpt_requirement
(
	objid varchar(50) primary key,
	requirementtypeid varchar(50) not null,
	handler varchar(50) not null,
	refid varchar(50) not null, 
	value_objid varchar(50),
	value_txnno varchar(50) ,
	value_txndate date,
	value_txnamount numeric(16,2),
	value_remarks varchar(2000),
	complied int not null,
	constraint FK_rptrequirement_rptrequirementtype foreign key (requirementtypeid)
		references rpt_requirement_type(objid)
)
go

create index ix_rptrequirement_requirementtypeid on rpt_requirement(requirementtypeid)
go

create index ix_rptrequirement_refid on rpt_requirement(refid)
go

create index ix_rptrequirement_valueobjid on rpt_requirement(value_objid)
go





insert into sys_usergroup 
	(objid, title, domain, userclass, orgclass, role)
values
	('RPT.EXAMINER', 'EXAMINER', 'RPT', 'usergroup', null, 'EXAMINER')
go

insert into sys_usergroup 
	(objid, title, domain, userclass, orgclass, role)
values
	('RPT.RECORD', 'RECORD', 'RPT', 'usergroup', null, 'RECORD')
go


/* MYSQL

CREATE TABLE `image_file` (
  `objid` VARCHAR(50) CHARACTER SET latin1 NOT NULL,
  `refid` VARCHAR(50) NOT NULL,
  `title` VARCHAR(100) CHARACTER SET latin1 NOT NULL,
  `filesize` INT(11) DEFAULT NULL,
  `extension` VARCHAR(25) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


CREATE TABLE `image_file_item` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) NOT NULL DEFAULT '',
  `fileno` INT(11) NOT NULL,
  `byte` BLOB NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


*/



