

insert into sys_ruleset
values('rptbilling', 'RPT Billing Rules', 'rptbilling', null, null, null ) 
go


insert into sys_rulegroup
values ('TAX', 'rptbilling','Tax Computation', 1)
go

insert into sys_rulegroup
values ('AFTER_TAX', 'rptbilling','After Tax Computation', 2)
go

insert into sys_rulegroup
values ('PENALTY', 'rptbilling','Penalty Computation', 3)
go


insert into sys_rulegroup
values ('AFTER_PENALTY', 'rptbilling','After Penalty Computation', 4)
go

insert into sys_rulegroup
values ('DISCOUNT', 'rptbilling','Discount Computation', 5)
go

insert into sys_rulegroup
values ('AFTER_DISCOUNT', 'rptbilling','After Discount Computation', 6)
go

insert into sys_rulegroup
values ('SUMMARY', 'rptbilling','Summary', 7)
go







