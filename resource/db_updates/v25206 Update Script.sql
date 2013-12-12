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




/*==============================================================
**
** CTC SUPPORT 
**
===============================================================*/
create table profession
(
	objid varchar(100) primary key
)
go 




create table cashreceipt_ctc_corporate
(
	objid varchar(50) primary key,
	payer_tin varchar(50),
	payer_orgtype varchar(50),
	payer_nature varchar(50),
	payer_dtregistered datetime,
	payer_placeregistered varchar(100),
	additional_remarks varchar(100),
	realpropertyav numeric(16,2) not null,
	businessgross numeric(16,2) not null,
	basictax numeric(16,2) not null,
	propertyavtax numeric(16,2) not null,
	businessgrosstax numeric(16,2) not null,
	totaltax numeric(16,2) not null,
	interest numeric(16,2) not null,
	amountdue numeric(16,2) not null
)
go

alter table cashreceipt_ctc_corporate 
	add constraint FK_cashreceiptctccorporate_cashreceipt foreign key (objid)
	references cashreceipt (objid)
go



alter table entityjuridical add placeregistered varchar(100)
go


alter table entityindividual add acr varchar(50)
go



create table cashreceipt_ctc_individual
(
	objid varchar(50) primary key,
	payer_profession varchar(50),
	payer_citizenship varchar(50),
	payer_civilstatus varchar(25),
	payer_height varchar(25),
	payer_weight varchar(25),
	additional_remarks varchar(100),
	businessgross numeric(16,2) not null,
	annualsalary numeric(16,2) not null,
	propertyincome numeric(16,2) not null,
	basictax numeric(16,2) not null,
	salarytax numeric(16,2) not null,
	businessgrosstax numeric(16,2) not null,
	propertyincometax numeric(16,2) not null,
	additionaltax numeric(16,2) not null,
	totaltax numeric(16,2) not null,
	interest numeric(16,2) not null,
	amountdue numeric(16,2) not null,
	interestdue numeric(16,2) not null,
	
	barangay_objid varchar(50),
	barangay_name varchar(50),
	brgytaxshare numeric(16,2) not null,
	brgyinterestshare numeric(16,2) not null
)
go



alter table cashreceipt_ctc_individual
	add constraint FK_cashreceiptctcindividual_cashreceipt foreign key (objid)
	references cashreceipt (objid)
go







insert into sys_ruleset values('ctcindividual', 'CTC Individual Assessment Rules', 'ctcindividual', null, null, null)
go

insert into sys_ruleset values('ctccorporate', 'CTC Corporate Assessment Rules', 'ctccorporate', null, null, null)
go



insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('TAX', 'ctcindividual', 'Tax Computation', 1)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('ADDITIONAL_TAX', 'ctcindividual', 'Additional Tax Computation', 2)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('AFTER_TAX', 'ctcindividual', 'After Tax Computation', 3)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('INTEREST', 'ctcindividual', 'Interest Computation', 4)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('SHARE', 'ctcindividual', 'Barangay Share Computation', 5)
go


insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('TAX', 'ctccorporate', 'Tax Computation', 1)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('ADDITIONAL_TAX', 'ctccorporate', 'Additional Tax Computation', 2)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('AFTER_TAX', 'ctccorporate', 'After Tax Computation', 3)
go

insert into sys_rulegroup (name, ruleset, title, sortorder)
values ('INTEREST', 'ctccorporate', 'Interest Computation', 4)
go





insert into sys_ruleset_fact values('ctccorporate', 'RULFACT33cb572b:142da8961f6:-7da3');
insert into sys_ruleset_fact values('ctccorporate', 'RULFACT49f1ff47:142dfb342ca:-6f8c');
insert into sys_ruleset_fact values('ctcindividual', 'RULFACT33cb572b:142da8961f6:-7f96');
insert into sys_ruleset_fact values('ctcindividual', 'RULFACT40e16e9c:142df3e5af6:-551d');
insert into sys_ruleset_fact values('ctcindividual', 'RULFACT-7387c51c:142dbad3349:-73aa');


insert into sys_rule_fact (objid, name, title, factclass, sortorder) values ('RULFACT33cb572b:142da8961f6:-7da3', 'CorporateCTC', 'Corporate CTC', 'CorporateCTC', 1);
insert into sys_rule_fact (objid, name, title, factclass, sortorder) values ('RULFACT49f1ff47:142dfb342ca:-6f8c', 'CurrentDate', 'Current Date', 'CurrentDate', 2);
insert into sys_rule_fact (objid, name, title, factclass, sortorder) values ('RULFACT33cb572b:142da8961f6:-7f96', 'IndividualCTC', 'Individual CTC', 'IndividualCTC', 1);
insert into sys_rule_fact (objid, name, title, factclass, sortorder) values ('RULFACT40e16e9c:142df3e5af6:-551d', 'currentdate', 'Current Date', 'CurrentDate', 3);
insert into sys_rule_fact (objid, name, title, factclass, sortorder) values ('RULFACT-7387c51c:142dbad3349:-73aa', 'barangay', 'Barangay', 'Barangay', 2);


insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7a47', 'RULFACT33cb572b:142da8961f6:-7da3', 'interest', 'Interest','decimal',10, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7a50', 'RULFACT33cb572b:142da8961f6:-7da3', 'additionaltax', 'Additional Tax','decimal',9, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7a59', 'RULFACT33cb572b:142da8961f6:-7da3', 'propertyavtax', 'Property AV Tax','decimal',8, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7a67', 'RULFACT33cb572b:142da8961f6:-7da3', 'businessgrosstax', 'Business Gross Tax','decimal',7, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7a70', 'RULFACT33cb572b:142da8961f6:-7da3', 'basictax', 'Basic Tax','decimal',6, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7a79', 'RULFACT33cb572b:142da8961f6:-7da3', 'additional', 'Is Additional?','boolean',5, 'boolean', null,null,null,null,null, null,'boolean',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b22', 'RULFACT33cb572b:142da8961f6:-7f96', 'totaltax', 'Total Tax','decimal',17, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b2f', 'RULFACT33cb572b:142da8961f6:-7f96', 'interest', 'Interest','decimal',18, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b3c', 'RULFACT33cb572b:142da8961f6:-7f96', 'additionaltax', 'Additional Tax','decimal',16, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b49', 'RULFACT33cb572b:142da8961f6:-7f96', 'propertyincometax', 'Property Income Tax','decimal',15, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b56', 'RULFACT33cb572b:142da8961f6:-7f96', 'businessgrosstax', 'Business Gross Tax','decimal',14, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b63', 'RULFACT33cb572b:142da8961f6:-7f96', 'salarytax', 'Salary Tax','decimal',13, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b70', 'RULFACT33cb572b:142da8961f6:-7f96', 'basictax', 'Basic Tax','decimal',12, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b7d', 'RULFACT33cb572b:142da8961f6:-7f96', 'additional', 'Is Additional?','boolean',11, 'boolean', null,null,null,null,null, null,'boolean',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-301ea2a7:142daea52cd:-7b92', 'RULFACT33cb572b:142da8961f6:-7f96', 'barangayid', 'Barangay','string',10, 'lookup', 'barangay:lookup','objid','name',null,null, null,'string',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7d66', 'RULFACT33cb572b:142da8961f6:-7da3', 'newbusiness', 'Is New Business?','boolean',4, 'boolean', null,null,null,null,null, 0,'boolean',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7d6f', 'RULFACT33cb572b:142da8961f6:-7da3', 'businessgross', 'Business Gross','decimal',3, 'decimal', null,null,null,null,null, 0,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7d78', 'RULFACT33cb572b:142da8961f6:-7da3', 'realpropertyav', 'Real Property AV','decimal',2, 'decimal', null,null,null,null,null, 0,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7d89', 'RULFACT33cb572b:142da8961f6:-7da3', 'orgtype', 'Organization Type','string',1, 'lov', null,null,null,null,null, 0,'string','BUSINESS_ORG_TYPE');
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7eba', 'RULFACT33cb572b:142da8961f6:-7f96', 'propertyincome', 'Property Income','decimal',9, 'decimal', null,null,null,null,null, 0,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7ec7', 'RULFACT33cb572b:142da8961f6:-7f96', 'businessgross', 'Business Gross','decimal',8, 'decimal', null,null,null,null,null, 0,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7ed4', 'RULFACT33cb572b:142da8961f6:-7f96', 'annualsalary', 'Annual Salary','decimal',7, 'decimal', null,null,null,null,null, 0,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7eed', 'RULFACT33cb572b:142da8961f6:-7f96', 'newbusiness', 'Is New Business?','boolean',6, 'boolean', null,null,null,null,null, 0,'boolean',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7efa', 'RULFACT33cb572b:142da8961f6:-7f96', 'seniorcitizen', 'Is Senior Citizen?','boolean',5, 'boolean', null,null,null,null,null, 0,'boolean',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7f1f', 'RULFACT33cb572b:142da8961f6:-7f96', 'civilstatus', 'Civil Status','string',4, 'lov', null,null,null,null,null, 0,'string','CIVIL_STATUS');
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7f4d', 'RULFACT33cb572b:142da8961f6:-7f96', 'gender', 'Gender','string',3, 'lov', null,null,null,null,null, 0,'string','GENDER');
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7f5a', 'RULFACT33cb572b:142da8961f6:-7f96', 'citizenship', 'Citizenship','string',2, 'lov', null,null,null,null,null, 0,'string','CITIZENSHIP');
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD33cb572b:142da8961f6:-7f67', 'RULFACT33cb572b:142da8961f6:-7f96', 'profession', 'Profession','string',1, 'string', null,null,null,null,null, null,'string',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD40e16e9c:142df3e5af6:-54d8', 'RULFACT40e16e9c:142df3e5af6:-551d', 'day', 'Day','integer',4, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD40e16e9c:142df3e5af6:-54e7', 'RULFACT40e16e9c:142df3e5af6:-551d', 'month', 'Month','integer',3, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD40e16e9c:142df3e5af6:-54f6', 'RULFACT40e16e9c:142df3e5af6:-551d', 'qtr', 'Quarter','integer',2, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD40e16e9c:142df3e5af6:-5505', 'RULFACT40e16e9c:142df3e5af6:-551d', 'year', 'Year','integer',1, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD49f1ff47:142dfb342ca:-6cc1', 'RULFACT33cb572b:142da8961f6:-7da3', 'totaltax', 'Total Tax','decimal',11, 'decimal', null,null,null,null,null, null,'decimal',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD49f1ff47:142dfb342ca:-6f4e', 'RULFACT49f1ff47:142dfb342ca:-6f8c', 'day', 'Day','integer',4, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD49f1ff47:142dfb342ca:-6f5b', 'RULFACT49f1ff47:142dfb342ca:-6f8c', 'month', 'Month','integer',3, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD49f1ff47:142dfb342ca:-6f68', 'RULFACT49f1ff47:142dfb342ca:-6f8c', 'qtr', 'Qtr','integer',2, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD49f1ff47:142dfb342ca:-6f75', 'RULFACT49f1ff47:142dfb342ca:-6f8c', 'year', 'Year','integer',1, 'integer', null,null,null,null,null, null,'integer',null);
insert into sys_rule_fact_field (      objid, parentid, name, title, datatype, sortorder, handler, lookuphandler, lookupkey,       lookupvalue, lookupdatatype, multivalued, required, vardatatype, lovname   )   values ('FACTFLD-7387c51c:142dbad3349:-7393', 'RULFACT-7387c51c:142dbad3349:-73aa', 'objid', 'Barangay','string',1, 'lookup', 'barangay:lookup','objid','name',null,null, null,'string',null);

insert into sys_ruleset_actiondef values('ctccorporate', 'RULADEF40e16e9c:142df3e5af6:-7ad7')
insert into sys_ruleset_actiondef values('ctccorporate', 'RULADEF40e16e9c:142df3e5af6:-7b1e')
insert into sys_ruleset_actiondef values('ctccorporate', 'RULADEF40e16e9c:142df3e5af6:-7b41')
insert into sys_ruleset_actiondef values('ctccorporate', 'RULADEF40e16e9c:142df3e5af6:-7b7b')
insert into sys_ruleset_actiondef values('ctccorporate', 'RULADEF-7b3bc8de:142e512eedb:-7dc5')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-301ea2a7:142daea52cd:-7611')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-301ea2a7:142daea52cd:-7649')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-301ea2a7:142daea52cd:-7707')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-301ea2a7:142daea52cd:-776c')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-301ea2a7:142daea52cd:-7887')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-301ea2a7:142daea52cd:-7ed8')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-7387c51c:142dbad3349:-74e2')
insert into sys_ruleset_actiondef values('ctcindividual', 'RULADEF-7387c51c:142dbad3349:-75a7')



insert into sys_rule_actiondef values('RULADEF40e16e9c:142df3e5af6:-7ad7', 'calc-interest','Calculate Interest', 5,'calc-interest');
insert into sys_rule_actiondef values('RULADEF40e16e9c:142df3e5af6:-7b1e', 'calc-propertyav-tax','Calculate Property AV Tax', 3,'calc-propertyav-tax');
insert into sys_rule_actiondef values('RULADEF40e16e9c:142df3e5af6:-7b41', 'calc-businessgross-tax','Calculate Business Gross Tax', 2,'calc-businessgross-tax');
insert into sys_rule_actiondef values('RULADEF40e16e9c:142df3e5af6:-7b7b', 'calc-basic-tax','Calculate Basic Tax', 1,'calc-basic-tax');
insert into sys_rule_actiondef values('RULADEF-7b3bc8de:142e512eedb:-7dc5', 'calc-additional-tax','Calculate Additional Tax', 4,'calc-additional-tax');
insert into sys_rule_actiondef values('RULADEF-301ea2a7:142daea52cd:-7611', 'calc-interest','Calculate Interest', 10,'calc-interest');
insert into sys_rule_actiondef values('RULADEF-301ea2a7:142daea52cd:-7649', 'calc-additional-tax','Calculate Additional Tax', 5,'calc-additional-tax');
insert into sys_rule_actiondef values('RULADEF-301ea2a7:142daea52cd:-7707', 'calc-propertyincome-tax','Calculate Property Income Tax', 4,'calc-propertyincome-tax');
insert into sys_rule_actiondef values('RULADEF-301ea2a7:142daea52cd:-776c', 'calc-businessgross-tax','Calculate Business Gross Tax', 3,'calc-businessgross-tax');
insert into sys_rule_actiondef values('RULADEF-301ea2a7:142daea52cd:-7887', 'calc-salary-tax','Calculate Salary Tax', 2,'calc-salary-tax');
insert into sys_rule_actiondef values('RULADEF-301ea2a7:142daea52cd:-7ed8', 'calc-basic-tax','Calculate Basic Tax', 1,'calc-basic-tax');
insert into sys_rule_actiondef values('RULADEF-7387c51c:142dbad3349:-74e2', 'calc-brgy-int-share','Calculate Barangay Interest Share', 11,'calc-brgy-int-share');
insert into sys_rule_actiondef values('RULADEF-7387c51c:142dbad3349:-75a7', 'calc-brgy-tax-share','Calculate Barangay Tax Share', 10,'calc-brgy-tax-share');


insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-75fd','RULADEF-301ea2a7:142daea52cd:-7611','expr',3,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-7606','RULADEF-301ea2a7:142daea52cd:-7611','ctc',1,'CTC',null,'var',null,null,null,'IndividualCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-7635','RULADEF-301ea2a7:142daea52cd:-7649','expr',2,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-763e','RULADEF-301ea2a7:142daea52cd:-7649','ctc',1,'CTC',null,'var',null,null,null,'IndividualCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-76f5','RULADEF-301ea2a7:142daea52cd:-7707','expr',2,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-76fc','RULADEF-301ea2a7:142daea52cd:-7707','ctc',1,'CTC',null,'var',null,null,null,'IndividualCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-773d','RULADEF-301ea2a7:142daea52cd:-776c','expr',2,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-7744','RULADEF-301ea2a7:142daea52cd:-776c','ctc',1,'CTC',null,'var',null,null,null,'IndividualCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-7875','RULADEF-301ea2a7:142daea52cd:-7887','expr',2,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-787c','RULADEF-301ea2a7:142daea52cd:-7887','ctc',1,'CTC',null,'var',null,null,null,'IndividualCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-7ebc','RULADEF-301ea2a7:142daea52cd:-7ed8','expr',3,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-301ea2a7:142daea52cd:-7ec3','RULADEF-301ea2a7:142daea52cd:-7ed8','ctc',1,'CTC',null,'var',null,null,null,'IndividualCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-6fed','RULADEF40e16e9c:142df3e5af6:-7ad7','ctc',1,'CTC Reference',null,'var',null,null,null,'CorporateCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-704f','RULADEF40e16e9c:142df3e5af6:-7b1e','ctc',1,'CTC Reference',null,'var',null,null,null,'CorporateCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-7073','RULADEF40e16e9c:142df3e5af6:-7b41','ctc',1,'CTC Reference',null,'var',null,null,null,'CorporateCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-70b1','RULADEF40e16e9c:142df3e5af6:-7b7b','ctc',1,'CTC Reference',null,'var',null,null,null,'CorporateCTC',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-7abf','RULADEF40e16e9c:142df3e5af6:-7ad7','expr',3,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-7acc','RULADEF40e16e9c:142df3e5af6:-7ad7','acct',2,'Account',null,'lookup','revenueitem:lookup','objid','title',null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-7b13','RULADEF40e16e9c:142df3e5af6:-7b1e','expr',2,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-7b36','RULADEF40e16e9c:142df3e5af6:-7b41','expr',2,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-7b62','RULADEF40e16e9c:142df3e5af6:-7b7b','expr',3,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM40e16e9c:142df3e5af6:-7b70','RULADEF40e16e9c:142df3e5af6:-7b7b','acct',2,'Account',null,'lookup','revenueitem:lookup','objid','title',null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-725b','RULADEF-7387c51c:142dbad3349:-74e2','brgy',1,'Barangay',null,'var',null,null,null,'Barangay',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-7299','RULADEF-7387c51c:142dbad3349:-75a7','brgy',1,'Barangay',null,'var',null,null,null,'Barangay',null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-74cc','RULADEF-7387c51c:142dbad3349:-74e2','expr',3,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-74d9','RULADEF-7387c51c:142dbad3349:-74e2','acct',2,'Account',null,'lookup','revenueitem:lookup','objid','title',null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-7560','RULADEF-7387c51c:142dbad3349:-75a7','expr',3,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-7580','RULADEF-7387c51c:142dbad3349:-75a7','acct',2,'Account',null,'lookup','revenueitem:lookup','objid','title',null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-77cd','RULADEF-301ea2a7:142daea52cd:-7611','acct',2,'Account',null,'lookup','revenueitem:lookup','objid','title',null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7387c51c:142dbad3349:-7801','RULADEF-301ea2a7:142daea52cd:-7ed8','acct',2,'Account',null,'lookup','revenueitem:lookup','objid','title',null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7b3bc8de:142e512eedb:-7daf','RULADEF-7b3bc8de:142e512eedb:-7dc5','expr',2,'Computation',null,'expression',null,null,null,null,null);
insert into sys_rule_actiondef_param   (objid, parentid, name, sortorder, title, datatype, handler, lookuphandler, lookupkey, lookupvalue, vardatatype, lovname)  values('ACTPARAM-7b3bc8de:142e512eedb:-7db6','RULADEF-7b3bc8de:142e512eedb:-7dc5','ctc',1,'CTC Reference',null,'var',null,null,null,'CorporateCTC',null);