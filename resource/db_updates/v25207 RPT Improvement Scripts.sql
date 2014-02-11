
create index ix_realproperty_pin on realproperty(pin)
go


alter table realproperty drop constraint FK_realproperty_pin
go

drop index realproperty.FK_realproperty_pin
go

alter table realproperty drop column pinid
go


alter table realproperty add lguid varchar(50)
go
update realproperty set lguid = '169'
go


alter table realproperty drop constraint ux_realproperty_rypinclaimno
go 


alter table realproperty drop constraint ux_realproperty_rypinclaimnostate
go


alter table faas add dtapproved date 
go


alter table rpumaster add currentfaasid varchar(50)
go
alter table rpumaster add currentrpuid varchar(50)
go


alter table faas add realpropertyid varchar(50)
go

update f set 
	f.realpropertyid = r.realpropertyid 
from faas f 
	inner join rpu r on f.rpuid = r.objid 
go	




drop index txnsignatory.ix_signatory_name
go
drop index txnsignatory.ix_name
go




  
  alter table faas add lgutype varchar(25)
  go
  
  update faas set lgutype = 'city'
  go
  
  
  
  
  
CREATE NONCLUSTERED INDEX ix_faas_realproperty
ON [dbo].[faas] ([realpropertyid])
INCLUDE ([objid])
GO




alter table resection add signatories varchar(2000)
go


alter table resectionaffectedrpu drop constraint ux_reseectionaffectedrpu_sect_rtype_suffix_newrpid




alter table subdividedland alter column newrpuid varchar(50) null
go



alter table subdividedland add constraint ux_subdividedland unique(subdivisionid, newrpid)
go






alter table subdivision add lguid varchar(50)
go


update subdivision set lguid = '169'
go 





alter table consolidation alter column newrpid varchar(50) null
go
alter table consolidation alter column newrpuid varchar(50) null
go







alter table faas alter column taxpayer_objid varchar(50) null
go
alter table faas alter column taxpayer_name text null
go
alter table faas alter column taxpayer_address varchar(150) null
go
alter table faas alter column owner_name text null
go
alter table faas alter column owner_address varchar(150) null
go



alter table realproperty alter column section varchar(3) null
go

alter table realproperty alter column parcel varchar(3) null
go

alter table realproperty alter column north varchar(255) null
go
alter table realproperty alter column south varchar(255) null
go
alter table realproperty alter column east varchar(255) null
go
alter table realproperty alter column west varchar(255) null
go

alter table rpu alter column classification_objid varchar(50) null
go






create table rpttask
(
	taskid varchar(50) primary key,
	state varchar(50) not null,
	objid varchar(50) not null,
	refno varchar(50) not null,
	filetype varchar(50) not null,
	msg varchar(100) not null,
	startdate datetime not null,
	enddate datetime null,
	createdbyid varchar(50) not null,
	createdby varchar(150) not null,
	createdbytitle varchar(50) ,
	assignedtoid varchar(50),
	assignedto varchar(150),
	assignedtotitle varchar(50)
)
go

create index ix_rpttask_objid on rpttask(objid)
go

create index ix_rpttask_createdbyid on rpttask(createdbyid)
go
create index ix_rpttask_createdby on rpttask(createdby)
go
create index ix_rpttask_createdbyid_state on rpttask(createdbyid, state)
go

create index ix_rpttask_assignedtoid on rpttask(assignedtoid)
go
create index ix_rpttask_assignedto on rpttask(assignedto)
go






/*========================================================================
**
** SIGNATORIES
**
========================================================================*/

alter table faas add signatories varchar(1000)
go

update faas set signatories = null  
go



alter table subdivision add signatories varchar(1000)
go

update subdivision set signatories = null  
go



alter table consolidation add signatories varchar(1000)
go

update consolidation set signatories = null  
go



alter table txnsignatory drop constraint DF__txnsignat__dtsig__492FC531
go

alter table txnsignatory alter column dtsigned date null
go






alter table faas alter column rpuid varchar(50) null
go

alter table bldgrpu alter column bldgtype_objid varchar(50) null
go
alter table bldgrpu alter column bldgkindbucc_objid varchar(50) null
go



alter table miscrpu alter column actualuse_objid varchar(50) null
go




create table rpttracking
(
	objid varchar(50) not null primary key,
	filetype varchar(50) not null,
	trackingno varchar(25) not null,
	msg varchar(150)
)
go

alter table rpttracking add constraint ux_rpttracking_trackingno unique(trackingno)
go
