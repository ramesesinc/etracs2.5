alter table rpttask add status varchar(100)
GO

update rpttask set status = msg
GO

update rpttask set msg = findings
GO

alter table rpttask drop column findings
go 