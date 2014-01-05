update sys_var set value = '2002,2013' where name = 'rptbilling_assessed_value_fact_years'
go


alter table rptledgerfaas add reclassed int
go

update rptledgerfaas set reclassed = 0
go


