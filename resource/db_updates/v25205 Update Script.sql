alter table cashreceiptitem_rpt add partialled int
go

alter table bank add deposittype varchar(50)
go

update bank set deposittype = 'LOCAL'
go


alter table bank drop constraint ux_bank_code
go
alter table bank drop constraint ux_bank_name
go

alter table bank add constraint ux_bank_code_branch unique (code,branchname)
go
alter table bank add constraint ux_bank_name_branch unique (name, branchname)
go

alter table bank add depository int
go
update bank set depository = 1
go

alter table cashreceiptpayment_check add bankid varchar(50)
go
alter table cashreceiptpayment_check add deposittype varchar(50)
go



alter table cashreceiptpayment_check add constraint FK_cashreceiptpayment_check_bank 
	foreign key (bankid)references bank(objid)
go