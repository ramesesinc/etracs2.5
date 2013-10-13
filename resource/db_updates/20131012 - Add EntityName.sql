alter table entity add entityname varchar(300) 
go

drop index entity.ix_entity_name
go

alter table entity alter column name text not null
go

update entity set entityname =  substring(name,0, 300) where entityname is null
go

