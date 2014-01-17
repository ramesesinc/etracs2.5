
create index ix_realproperty_pin on realproperty(pin)
go


alter table realproperty drop constraint FK_realproperty_pin
go

drop index realproperty.FK_realproperty_pin
go

alter table realproperty drop column pinid
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
  
  
  
  