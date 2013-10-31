ALTER TABLE sys_rule_condition ADD dynamic_datatype varchar(50);
ALTER TABLE sys_rule_condition ADD dynamic_key varchar(50);
ALTER TABLE sys_rule_condition ADD dynamic_value varchar(50); 



ALTER TABLE sys_rule_fact ADD dynamic int;
ALTER TABLE sys_rule_fact ADD lookuphandler varchar(50);
ALTER TABLE sys_rule_fact ADD lookupkey varchar(50);
ALTER TABLE sys_rule_fact ADD lookupvalue varchar(50);
ALTER TABLE sys_rule_fact ADD lookupdatatype varchar(50);
ALTER TABLE sys_rule_fact ADD dynamicfieldname varchar(50);
ALTER TABLE sys_rule_fact ADD builtinconstraints varchar(50);

ALTER TABLE sys_rule_actiondef ADD actionname varchar(50);

update sys_rule_actiondef set actionname = name; 

ALTER TABLE sys_rule_condition_constraint DROP COLUMN dynamicvar_objid;
ALTER TABLE sys_rule_condition_constraint DROP COLUMN dynamicvar_name;
ALTER TABLE sys_rule_condition_constraint DROP COLUMN dynamicvar_datatype;