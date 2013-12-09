alter table brgyshareitem add commonshare numeric(16,2)
go

alter table brgyshare add sharetype varchar(50)
go


alter table brgyshareitem add basiccurrent numeric(16,2)
go
alter table brgyshareitem add basicprevious numeric(16,2)
go
alter table brgyshareitem add basiccollection numeric(16,2)
go
alter table brgyshareitem add basicintcollection numeric(16,2)
go


alter table ap_detail drop constraint ux_ap_detail_txnrefno
go