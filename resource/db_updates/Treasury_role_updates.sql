delete from sys_usergroup_member WHERE usergroup_objid='TREASURY.AF_FORWARDER';
delete from sys_usergroup_permission WHERE usergroup_objid='TREASURY.AF_FORWARDER';
delete from sys_usergroup where objid='TREASURY.AF_FORWARDER';

delete from sys_usergroup_member WHERE usergroup_objid='TREASURY.TOOL_MGMT';
delete from sys_usergroup_permission WHERE usergroup_objid='TREASURY.TOOL_MGMT';
delete from sys_usergroup where objid='TREASURY.TOOL_MGMT';


INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-AFO-afserial-forward', 'TREASURY.AFO', 'afserial', 'forward', 'Forward') 

INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-AFO-cashticket-forward', 'TREASURY.AFO', 'cashticket', 'forward', 'Forward') 

delete from sys_usergroup_member WHERE usergroup_objid='TREASURY.LIST_MGMT';
delete from sys_usergroup_permission WHERE usergroup_objid='TREASURY.LIST_MGMT';
delete from sys_usergroup where objid='TREASURY.LIST_MGMT';

delete from sys_usergroup_member WHERE usergroup_objid='TREASURY.TREASURY_SHARED';
delete from sys_usergroup where objid='TREASURY.TREASURY_SHARED';
delete from sys_usergroup_permission WHERE usergroup_objid='TREASURY.TREASURY_SHARED';

insert into sys_usergroup (objid,title,domain,userclass,orgclass,role)
values ('TREASURY.SHARED', 'TREASURY SHARED','TREASURY','usergroup', NULL, 'SHARED') ;

INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-SHARED-bankdeposit-view', 'TREASURY.SHARED', 'bankdeposit', 'view', 'View List') ;
INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-SHARED-liquidation-view', 'TREASURY.SHARED', 'liquidation', 'view', 'View List') ;
INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-SHARED-remittance-view', 'TREASURY.SHARED', 'remittance', 'view', 'View List') ;


delete from sys_usergroup_member WHERE usergroup_objid='TREASURY.TREASURY_REPORT';
delete from sys_usergroup where objid='TREASURY.TREASURY_REPORT';
delete from sys_usergroup_permission WHERE usergroup_objid='TREASURY.TREASURY_REPORT';

insert into sys_usergroup (objid,title,domain,userclass,orgclass,role)
values ('TREASURY.REPORT', 'TREASURY REPORT','TREASURY','usergroup', NULL, 'REPORT') ;

INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-REPORT-directtocash-viewreport', 'TREASURY.REPORT', 'directtocash', 'viewreport', 'View Report') ;
INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-REPORT-collectionbyfund-viewreport', 'TREASURY.REPORT', 'collectionbyfund', 'viewreport', 'View Report') ;
INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-REPORT-srs-viewreport', 'TREASURY.REPORT', 'srs', 'viewreport', 'View Report') ;
INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-REPORT-statementofrevenue-viewreport', 'TREASURY.REPORT', 'statementofrevenue', 'viewreport', 'View Report') ;

DELETE FROM sys_usergroup_permission WHERE objid='TREASURY-TREASURY_DATAMGMT'; 
ALTER TABLE sys_usergroup_permission ADD CONSTRAINT FK_usergroup_permission_usergroup 
FOREIGN KEY (usergroup_objid) REFERENCES sys_usergroup(objid);

delete from sys_usergroup_member WHERE usergroup_objid='TREASURY.BATCH_MANAGEMENT';
delete from sys_usergroup where objid='TREASURY.BATCH_MANAGEMENT';
delete from sys_usergroup_permission WHERE usergroup_objid='TREASURY.BATCH_MANAGEMENT';

insert into sys_usergroup (objid,title,domain,userclass,orgclass,role)
values ('TREASURY.DATA_CONTROLLER', 'TREASURY DATA CONTROLLER','TREASURY','usergroup', NULL, 'DATA_CONTROLLER') ;

INSERT INTO sys_usergroup_permission (objid,usergroup_objid,object,permission,title)
VALUES ( 'TREASURY-DATA_CONTROLLER-batchcapture-manage', 'TREASURY.DATA_CONTROLLER', 'batchcapture', 'manage', 'Manage Batch Capture') ;
