
alter table cashbook drop uix_subacct_fund
go


alter table cashbook add constraint ux_subacct_fund_type unique(subacct_objid, fund_objid, type)
go