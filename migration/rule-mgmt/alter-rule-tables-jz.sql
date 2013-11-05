ALTER TABLE sys_rule_condition ADD dynamic_datatype varchar(50)
go
ALTER TABLE sys_rule_condition ADD dynamic_key varchar(50)
go
ALTER TABLE sys_rule_condition ADD dynamic_value varchar(50)
go 



ALTER TABLE sys_rule_fact ADD dynamic int
go
ALTER TABLE sys_rule_fact ADD lookuphandler varchar(50)
go
ALTER TABLE sys_rule_fact ADD lookupkey varchar(50)
go
ALTER TABLE sys_rule_fact ADD lookupvalue varchar(50)
go
ALTER TABLE sys_rule_fact ADD lookupdatatype varchar(50)
go
ALTER TABLE sys_rule_fact ADD dynamicfieldname varchar(50)
go
ALTER TABLE sys_rule_fact ADD builtinconstraints varchar(50)
go

ALTER TABLE sys_rule_actiondef ADD actionname varchar(50)
go

update sys_rule_actiondef set actionname = name
go 

ALTER TABLE sys_rule_condition_constraint drop constraint DF__sys_rule___dynam__19FFD4FC
go

ALTER TABLE sys_rule_condition_constraint DROP COLUMN dynamicvar_objid
go

ALTER TABLE sys_rule_condition_constraint drop constraint DF__sys_rule___dynam__1AF3F935
go


ALTER TABLE sys_rule_condition_constraint DROP COLUMN dynamicvar_name
go


ALTER TABLE sys_rule_condition_constraint drop constraint DF__sys_rule___dynam__1BE81D6E
go
ALTER TABLE sys_rule_condition_constraint DROP COLUMN dynamicvar_datatype
go